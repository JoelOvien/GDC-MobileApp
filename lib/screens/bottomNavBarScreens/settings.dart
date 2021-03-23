import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/margin.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool readOrNot = true;
  bool readOrNot1 = true;
  bool toEdit = false;
  bool toEdit1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              YMargin(30),
              Center(
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            padding: EdgeInsets.only(top: 18, left: 15, right: 10, bottom: 15),
                            height: screenHeight(context, percent: 0.25),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(17, 0, 27, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Change Profile picture",
                                  style: GoogleFonts.manrope(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                const YMargin(20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Icon(
                                            Icons.delete,
                                            color: Color.fromRGBO(101, 7, 158, 1),
                                          ),
                                          Text(
                                            "Remove\nphoto",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.manrope(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.photo,
                                            color: Color.fromRGBO(101, 7, 158, 1),
                                          ),
                                          Text(
                                            "Gallery",
                                            style: GoogleFonts.manrope(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(width: 9),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.camera,
                                            color: Color.fromRGBO(101, 7, 158, 1),
                                          ),
                                          Text(
                                            "Camera",
                                            style: GoogleFonts.manrope(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Positioned(
                      left: 65,
                      top: 60,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Color.fromRGBO(101, 7, 158, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              YMargin(25),
              Builder(builder: (context) {
                if (toEdit == false) {
                  return Container(
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: GoogleFonts.manrope(
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(121, 121, 121, 1),
                                    fontSize: 18),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Aitanun Daniel Oseremen",
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Color.fromRGBO(101, 7, 158, 1),
                          ),
                          onPressed: () {
                            setState(() {
                              toEdit = true;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                }
                return Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(121, 121, 121, 1),
                                      fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                TextField(),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Color.fromRGBO(101, 7, 158, 1),
                            ),
                            onPressed: () {
                              // setState(() {
                              //   toEdit1 = true;
                              // });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                toEdit = false;
                              });
                            },
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(101, 7, 158, 1),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                toEdit = false;
                              });
                            },
                            child: Text(
                              "Save",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(101, 7, 158, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
              YMargin(25),
              Builder(
                builder: (context) {
                  if (toEdit1 == false) {
                    return Container(
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(121, 121, 121, 1),
                                      fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "+23490*********",
                                  style: GoogleFonts.manrope(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Color.fromRGBO(101, 7, 158, 1),
                            ),
                            onPressed: () {
                              setState(() {
                                toEdit1 = true;
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  }
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone",
                                    style: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(121, 121, 121, 1),
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 5),
                                  TextField(),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Color.fromRGBO(101, 7, 158, 1),
                              ),
                              onPressed: () {
                                // setState(() {
                                //   toEdit1 = true;
                                // });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  toEdit1 = false;
                                });
                              },
                              child: Text(
                                "Cancel",
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(101, 7, 158, 1),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  toEdit1 = false;
                                });
                              },
                              child: Text(
                                "Save",
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(101, 7, 158, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
