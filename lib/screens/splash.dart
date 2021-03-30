import 'package:eas/main.dart';
import 'package:eas/navigation/bottomNavBar.dart';
import 'package:eas/screens/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

var checkName, checkNumber, checkEmail;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  checkLoginState() async {
    if (checkToken != null) {
      Get.off(() => BottomNavBar());
    } else {
      Get.off(() => OnBoarding());
    }
  }

  @override
  void initState() {
    super.initState();
    getToken();
    Future.delayed(Duration(seconds: 3), () {
      checkLoginState();
    });
  }

  getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    checkNumber = sharedPreferences.getString("userPhoneNumber");
    checkEmail = sharedPreferences.getString("userEmail");
    checkName = sharedPreferences.getString("userName");
    checkToken = sharedPreferences.getString("userId");
    print("$checkName  $checkEmail    $checkNumber  $checkToken");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new Image.asset(
              'assets/ic_baseline-health-and-safety.png',
              fit: BoxFit.cover,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
