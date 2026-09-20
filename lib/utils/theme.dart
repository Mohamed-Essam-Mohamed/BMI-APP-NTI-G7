import 'package:flutter/material.dart';

class AppThem {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: Color(0xffF8F9FA),
    appBarTheme: AppBarThemeData(
      iconTheme: IconThemeData(color: Colors.black, size: 30),
      elevation: 50,
      titleTextStyle: TextStyle(
        color: Color(0xff2D3436),
        fontSize: 20,
        fontWeight: .w600,
      ),
      backgroundColor: Color(0xffF8F9FA),
    ),
  );
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Color(0xff1C2135),
    appBarTheme: AppBarThemeData(
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      elevation: 50,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: .w600,
      ),
      backgroundColor: Color(0xff24263B),
    ),
    useMaterial3: true,
    primaryColor: Color(0xff1C2135),
    secondaryHeaderColor: Color(0xff333244),
    highlightColor: Color(0xff3D81E8),
    focusColor: Color(0xffFFFFFF),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: .w400,
        color: Color(0xff8B8C9E),
      ),
      labelLarge: TextStyle(
        fontSize: 40,
        fontWeight: .bold,
        color: Color(0xffFFFFFF),
      ),
      bodySmall: TextStyle(fontSize: 15, fontWeight: .w500),
    ),
  );
}
