import 'package:flutter/material.dart';

class MyTheme {
  static const Color colorGold = Color(0xFFB7935F);
  static const Color colorYellow = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: colorGold,
      scaffoldBackgroundColor: Colors.transparent,
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
}
