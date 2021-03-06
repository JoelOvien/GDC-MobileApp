import 'package:eas/screens/getContactsPage.dart';
import 'package:eas/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/onBoarding.dart';

var checkToken;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  checkToken = sharedPreferences.getString("userName");
  //I did this to lock the app in portrait mode
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emergency App',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        indicatorColor: Color(0x65079E),
        buttonColor: Color.fromRGBO(101, 7, 158, 1),
        hintColor: Color(0x65079E),
        highlightColor: Color(0x65079E),
        hoverColor: Color(0x65079E),
        focusColor: Color(0x65079E),
        disabledColor: Colors.grey,
        cardColor: Color(0xFF151515),
        canvasColor: Colors.grey[50],
        brightness: Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home:
          // GetContactsPage(),
          SplashScreen(),
    );
  }
}
