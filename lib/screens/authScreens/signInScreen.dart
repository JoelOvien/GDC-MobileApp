import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdc_hospital_app/controllers/homeController.dart';
import 'package:gdc_hospital_app/navigation/bottomNavBar.dart';
import 'package:gdc_hospital_app/screens/authScreens/signUpScreen.dart';
import 'package:gdc_hospital_app/utils/margin.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/shield.svg",
                    height: 48,
                    width: 38,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Shield",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            YMargin(20),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color.fromRGBO(97, 97, 97, 1),
                    ),
                  ),
                  Text(
                    "Let's sign you in.",
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
            YMargin(25),
            Container(
              height: 48,
              width: 362,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color.fromRGBO(245, 245, 245, 1),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/google.svg",
                      height: 22,
                      width: 22,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "sign in with Google",
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color.fromRGBO(49, 49, 49, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            YMargin(25),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 5),
                    child: Container(
                      width: 152,
                      height: 1,
                      color: Color.fromRGBO(202, 202, 202, 1),
                    ),
                  ),
                  Text("Or"),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 0),
                    child: Container(
                      width: 162,
                      height: 1,
                      color: Color.fromRGBO(202, 202, 202, 1),
                    ),
                  )
                ],
              ),
            ),
            YMargin(25),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline, size: 20, color: Colors.black),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Username or email",
                        hintStyle: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                      ),
                    ),
                  ),
                  YMargin(20),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(FeatherIcons.lock, size: 20, color: Colors.black),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: "Password",
                        hintStyle: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(121, 121, 121, 1),
                        ),
                      ),
                    ),
                  ),
                  YMargin(20),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(245, 245, 245, 1),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Theme.of(context).buttonColor,
                          primary: Theme.of(context).buttonColor),
                      onPressed: () {
                        Get.offAll(() => BottomNavBar());
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            YMargin(25),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?   ",
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(121, 121, 121, 1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(() => SignUpScreen());
                    },
                    child: Text(
                      "Sign up here",
                      style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(101, 7, 158, 1),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
