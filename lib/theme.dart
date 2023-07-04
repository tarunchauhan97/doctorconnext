import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData buildThemeData() {
  return ThemeData(
      primaryColor: blueColor,
      primaryColorDark: darkBlack,
      primaryColorLight: lightWhite,
      accentColor: whiteColor,
      brightness: Brightness.light,
      errorColor: Colors.tealAccent,
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        headline1: TextStyle(fontWeight: FontWeight.w600),
        headline6:  TextStyle(fontWeight: FontWeight.w500),
        bodyText2:  TextStyle(fontWeight: FontWeight.w400),

      )
  );
}
