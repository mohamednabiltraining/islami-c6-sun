import 'package:flutter/material.dart';

class MyTheme {
  static const Color colorGold = Color(0xFFB7935F);
  static const Color colorYellow = Color(0xFFFACC1D);
  static const Color darkBlue = Color(0xFF141A2E);

  static final ThemeData lightTheme = ThemeData(
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorGold),
      primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
      backgroundColor: Colors.white,
      textTheme: TextTheme(
          headline4: TextStyle(fontSize: 28, color: Colors.black),
          headline5: TextStyle(fontSize: 24, color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(size: 24)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)));
  static final ThemeData darkTheme = ThemeData(
      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorYellow),
      primaryColor: colorYellow,
      scaffoldBackgroundColor: Colors.transparent,
      backgroundColor: darkBlue,
      textTheme: TextTheme(
          headline4: TextStyle(fontSize: 28, color: Colors.white),
          headline5: TextStyle(fontSize: 24, color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: colorYellow,
          selectedIconTheme: IconThemeData(
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(size: 24)),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 28)));
}
