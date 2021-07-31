import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: HexColor('F7F7F7'),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: HexColor('F7F7F7'),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
