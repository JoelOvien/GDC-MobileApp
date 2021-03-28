import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<Object> waitLoader() {
  return Get.dialog(ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 100,
        width: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(101, 7, 158, 1)),
              ),
              SizedBox(height: 5),
              Text(
                "Please wait",
                style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(121, 121, 121, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
