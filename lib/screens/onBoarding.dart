import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdc_hospital_app/screens/authScreens/signInScreen.dart';
import 'package:gdc_hospital_app/screens/authScreens/signUpScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/svgs/Group.svg",
              height: 300,
              width: double.infinity,
            ),
            SizedBox(height: 10),
            Text(
              "Headline Goes Here",
              style: GoogleFonts.manrope(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Subheadline, a more vivid explanation",
              style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(114, 114, 114, 1),
              ),
            ),
            // SizedBox(height: 15),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 148,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromRGBO(251, 245, 255, 1),
                    ),
                    onPressed: () {
                      Get.off(() => SignInScreen());
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.manrope(
                        color: Color.fromRGBO(101, 7, 158, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 148,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(101, 7, 158, 1),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Get.off(() => SignUpScreen());
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.manrope(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
