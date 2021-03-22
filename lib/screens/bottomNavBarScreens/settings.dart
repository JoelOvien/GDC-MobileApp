import 'package:flutter/material.dart';
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
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            YMargin(30),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
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
                  child: Text("Not edititng"),
                );
              }
              return Container();
            })
            // Center(
            //   child: Container(
            //     color: Colors.blue,
            //     child: TextField(
            //       readOnly: readOrNot,
            //       onSubmitted: (value) {
            //         setState(() {
            //           readOrNot = true;
            //         });
            //         print("submitted");
            //       },
            //       decoration: InputDecoration(
            //         border: InputBorder.none,
            //         helperText: "Name",
            //         hintText: "Aitanun Daniel Oseremen",
            //         hintStyle: GoogleFonts.manrope(
            //           fontWeight: FontWeight.w500,
            //           fontSize: 15,
            //           color: Colors.black,
            //         ),
            //         prefixIcon: Icon(
            //           Icons.person,
            //           color: Colors.black,
            //         ),
            //         suffixIcon: GestureDetector(
            //           onTap: () {
            //             setState(() {
            //               readOrNot = false;
            //             });
            //           },
            //           child: Icon(
            //             Icons.edit,
            //             color: Color.fromRGBO(101, 7, 158, 1),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
