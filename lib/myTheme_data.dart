import 'package:flutter/material.dart';

class MyThemeData {
  static const Color colorLightGreen = Color(0xFFDFECDB);
  static const Color colorBlue = Color(0xFF5D9CEC);
  static const Color colorGreen = Color(0xFF61E757);
  static const Color colorRed = Color(0xFFEC4B4B);
  static final ThemeData theme = ThemeData(
      scaffoldBackgroundColor: colorLightGreen,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: colorBlue,
          elevation: 0,
          centerTitle: true),
      textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          subtitle1: TextStyle(fontSize: 24, color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorBlue,
        unselectedItemColor: Colors.grey,
      ));
}
