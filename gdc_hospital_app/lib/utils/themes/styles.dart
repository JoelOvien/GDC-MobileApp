import 'dart:ui';

import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.purple,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      backgroundColor:
          // isDarkTheme ? Colors.black :
          Color(0xE5E5E5),
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0x65079E),
      buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0x65079E),
      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0x65079E),
      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0x65079E),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0x65079E),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0x65079E),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      cardColor: !isDarkTheme ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
    );
  }
}
