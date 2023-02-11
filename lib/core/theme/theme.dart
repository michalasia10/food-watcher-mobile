import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
      .copyWith(background: Colors.white),
);

ThemeData darkTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(background: Colors.black),
);

ThemeData getTheme({required bool isDark}) => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch(
              primarySwatch: isDark ? Colors.green : Colors.blue)
          .copyWith(background: isDark ? Colors.black : Colors.white),
    );
