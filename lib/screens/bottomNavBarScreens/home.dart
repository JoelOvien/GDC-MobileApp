import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gdc_hospital_app/controllers/homeController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/margin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome back,',
                          style: GoogleFonts.manrope(
                            fontSize: 17,
                            color: Color.fromRGBO(135, 135, 135, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Aitanun Daniel.O',
                          style: GoogleFonts.manrope(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/avatar.png"),
                    ),
                  ],
                ),
              ),
              YMargin(30),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 27,
                      ),
                      YMargin(13),
                      Text(
                        "Dr.Banji Kay",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                      YMargin(5),
                      Text(
                        "Currently Available",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromRGBO(101, 7, 158, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              YMargin(20),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Emergency Needed?",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color.fromRGBO(54, 54, 54, 1),
                        ),
                      ),
                      YMargin(3),
                      Text(
                        "You're just one call away from Help",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(135, 135, 135, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              YMargin(30),
              height <= 640.0
                  ? GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            padding: EdgeInsets.only(top: 18, left: 15, right: 10, bottom: 15),
                            height: height * 0.25,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(17, 0, 27, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select call type",
                                  style: GoogleFonts.manrope(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color.fromRGBO(101, 7, 158, 1),
                                  ),
                                ),
                                YMargin(15),
                                GestureDetector(
                                  onTap: () {
                                    print("voice");
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: Color.fromRGBO(101, 7, 158, 1),
                                        ),
                                        XMargin(10),
                                        Text(
                                          "Voice call",
                                          style: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                YMargin(12),
                                GestureDetector(
                                  onTap: () {
                                    print("video");
                                  },
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.video_call,
                                          color: Color.fromRGBO(101, 7, 158, 1),
                                        ),
                                        XMargin(10),
                                        Text(
                                          "Video call",
                                          style: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // backgroundColor: Color.fromRGBO(27, 27, 27, 0.53),
                          // barrierColor: Color.fromRGBO(27, 27, 27, 0.53),
                        );

                        print("fuckk");
                      },
                      child: Center(
                        child: Container(
                          height: 250,
                          width: 250,
                          child: SvgPicture.asset("assets/svgs/call button.svg"),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Get.bottomSheet(Container());
                        print("fuckk");
                      },
                      child: Center(
                        child: Container(
                          child: SvgPicture.asset("assets/svgs/call button.svg"),
                        ),
                      ),
                    ),
              YMargin(20),
            ],
          ),
        ),
      ),
    );
  }
}

//  Obx(
//                         () => Text(
//                           'Aitanun Daniel.O',
//                           style: GoogleFonts.manrope(
//                             fontSize: 21,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
