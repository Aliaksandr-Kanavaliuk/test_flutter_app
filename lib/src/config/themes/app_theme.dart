import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get Light {
    return ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.yellow,
      ),
      scaffoldBackgroundColor: Colors.amber,
      primaryColor: Colors.redAccent,
      // accentColor: Colors.blueAccent,
      splashColor: Colors.greenAccent,
      fontFamily: 'IBM',
    );
  }
}
