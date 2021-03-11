import 'package:flutter/material.dart';
import 'package:gdc_hospital_app/screens/onBoarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.purple,
        primaryColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        indicatorColor: Color(0x65079E),
        buttonColor: Color.fromRGBO(101, 7, 158, 1),
        hintColor: Color(0x65079E),
        highlightColor: Color(0x65079E),
        hoverColor: Color(0x65079E),
        focusColor: Color(0x65079E),
        disabledColor: Colors.grey,
        textSelectionColor: Colors.black,
        cardColor: Color(0xFF151515),
        canvasColor: Colors.grey[50],
        brightness: Brightness.light,
        buttonTheme: Theme.of(context)
            .buttonTheme
            .copyWith(colorScheme: ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      // Styles.themeData(false, context),
      // ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: OnBoarding(),
    );
  }
}
