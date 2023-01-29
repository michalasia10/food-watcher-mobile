import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.green,
  backgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  backgroundColor: Colors.black,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData getTheme({required bool isDark}) => ThemeData(
  primarySwatch: isDark ? Colors.green : Colors.blue,
  backgroundColor: isDark ? Colors.black : Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
