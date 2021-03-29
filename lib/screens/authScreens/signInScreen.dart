import 'package:eas/core/controllers/authController.dart';
import 'package:eas/core/controllers/homeController.dart';
import 'package:eas/core/view.models/authVM.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eas/navigation/bottomNavBar.dart';
import 'package:eas/screens/authScreens/signUpScreen.dart';
import 'package:eas/utils/margin.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
            YMargin(
              screenHeight(context, percent: 0.05),
            ),
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
            YMargin(
              screenHeight(context, percent: 0.1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      // width: double.infinity,
                      // height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: TextFormField(
                        validator: EmailValidator(errorText: "Enter a valid email"),
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline, size: 20, color: Colors.black),
                          border: InputBorder.none,
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
                      // padding: EdgeInsets.all(8),
                      // width: double.infinity,
                      // height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: Center(
                        child: TextFormField(
                          controller: _passwordController,
                          validator: MinLengthValidator(3, errorText: "Enter a valid password"),
                          decoration: InputDecoration(
                            prefixIcon: Icon(FeatherIcons.lock, size: 20, color: Colors.black),
                            border: InputBorder.none,
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
                          Get.offAll(BottomNavBar());

                          // if (_formKey.currentState.validate()) {
                          //   AuthVM().signIn(
                          //     _emailController.text.toString(),
                          //     _passwordController.text.toString(),
                          //   );
                          // }
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
