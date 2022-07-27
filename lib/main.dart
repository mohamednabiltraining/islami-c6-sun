import 'package:flutter/material.dart';
import 'package:islami_sun_c6/home/quran/sura_details.dart';
import 'package:islami_sun_c6/home_screen.dart';
import 'package:islami_sun_c6/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
    );
  }
}
