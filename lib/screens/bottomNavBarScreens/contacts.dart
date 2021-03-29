import 'dart:math';
import 'package:eas/core/models/customContactModel.dart';
import 'package:eas/screens/getContactsPage.dart';
import 'package:eas/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/margin.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Contacts",
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          contactList.length < 1
              ? Container()
              : IconButton(
                  icon: Icon(
                    Icons.add_circle,
                    color: Color.fromRGBO(101, 7, 158, 1),
                  ),
                  onPressed: () {},
                ),
        ],
      ),
      body: contactList.length < 1
          ? Container(
              child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  YMargin(10),
                  Center(
                    child: Container(
                      child: SvgPicture.asset("assets/svgs/pixeltrue-contact-me 1.svg"),
                    ),
                  ),
                  YMargin(30),
                  Center(
                    child: Text(
                      "It’s pretty empty in here \ndon’t you think?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color.fromRGBO(44, 43, 43, 1),
                      ),
                    ),
                  ),
                  YMargin(5),
                  Center(
                    child: Text(
                      "You have not added emergency contacts yet.\nTap the button to add your first contact.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color.fromRGBO(130, 130, 130, 1),
                      ),
                    ),
                  ),
                  YMargin(15),
                  Container(
                    width: 195,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => GetContactsPage());
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: Color.fromRGBO(101, 7, 158, 1)),
                      child: Text(
                        "Add contacts",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  children: List.generate(7, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 4.0, bottom: 10, left: 15, right: 5),
                      child: Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
                            ),
                            XMargin(10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Arlene McCoy",
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "(702) 555-0122",
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(80, 80, 80, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print("phone");
                                  },
                                  child: Icon(
                                    Icons.phone,
                                    color: Color.fromRGBO(101, 7, 158, 1),
                                  ),
                                ),
                                SizedBox(width: 20),
                                GestureDetector(
                                  onTap: () {
                                    print("video");
                                  },
                                  child: Icon(
                                    Icons.video_call,
                                    color: Color.fromRGBO(101, 7, 158, 1),
                                  ),
                                ),
                              ],
                            ),
                            XMargin(20),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
    );
  }
}
