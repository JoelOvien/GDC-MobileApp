import 'package:eas/core/view.models/authVM.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eas/utils/margin.dart';
import 'package:eas/screens/authScreens/signInScreen.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordController2 = TextEditingController();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
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
                    "EAS",
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
              child: Text(
                "Sign up",
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            YMargin(
              screenHeight(context, percent: 0.05),
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
                        controller: _nameController,
                        validator: MinLengthValidator(2, errorText: "Enter your name or username"),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline, size: 20, color: Colors.black),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Username",
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
                      // width: double.infinity,
                      // height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: TextFormField(
                        validator: MultiValidator([
                          EmailValidator(errorText: "Enter a valid email address"),
                          RequiredValidator(errorText: "email is required"),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(FeatherIcons.mail, size: 20, color: Colors.black),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Email",
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
                      // width: double.infinity,
                      // height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: TextFormField(
                        validator: MinLengthValidator(9, errorText: "Enter your phone number"),
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Icon(FeatherIcons.phone, size: 20, color: Colors.black),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Phone Number",
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
                      // width: double.infinity,
                      // height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        validator: MinLengthValidator(4,
                            errorText: "Password must be more up to 4 characters long"),
                        controller: _passwordController,
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
                      // width: double.infinity,
                      // height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 1),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        validator: (val) => MatchValidator(errorText: 'passwords do not match')
                            .validateMatch(val, _passwordController.text),
                        controller: _passwordController2,
                        decoration: InputDecoration(
                          prefixIcon: Icon(FeatherIcons.lock, size: 20, color: Colors.black),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Confirm password",
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
                          if (_formKey.currentState.validate()) {
                            AuthVM().signUp(
                              _nameController.text.toString(),
                              _phoneController.text.toString(),
                              _emailController.text.toString(),
                              _passwordController.text.toString(),
                            );
                          }
                        },
                        child: Text(
                          "Create account",
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
                    "Already have an account?   ",
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(121, 121, 121, 1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(() => SignInScreen());
                    },
                    child: Text(
                      "Sign in here",
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
