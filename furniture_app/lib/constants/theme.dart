import 'package:flutter/material.dart';
import 'package:furniture_app/constants/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
      scaffoldBackgroundColor: lightGreyColor,
      fontFamily: "Switzer",
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 32, color: darkColor, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 24, color: darkColor),
        displaySmall: TextStyle(fontSize: 16, color: darkColor),
        titleLarge: TextStyle(fontSize: 16, color: darkColor),
        titleMedium: TextStyle(fontSize: 13, color: darkColor),
        titleSmall: TextStyle(fontSize: 11, color: darkColor),
        bodyLarge: TextStyle(fontSize: 16, color: darkColor),
        bodyMedium: TextStyle(
            fontSize: 14, color: darkColor, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontSize: 12, color: darkColor),
      ),
      iconTheme: IconThemeData(
        color: darkColor,
        size: 24,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(primaryColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        elevation: MaterialStatePropertyAll(3),
        iconColor: MaterialStatePropertyAll(lightTextColor),
      )));
}

ThemeData darkTheme() {
  return ThemeData(
      scaffoldBackgroundColor: darkColor,
      fontFamily: "Switzer",
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 32, color: lightTextColor, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 24, color: lightTextColor),
        displaySmall: TextStyle(fontSize: 16, color: lightTextColor),
        titleLarge: TextStyle(fontSize: 16, color: lightTextColor),
        titleMedium: TextStyle(fontSize: 13, color: lightTextColor),
        titleSmall: TextStyle(fontSize: 11, color: lightTextColor),
        bodyLarge: TextStyle(fontSize: 16, color: lightTextColor),
        bodyMedium: TextStyle(
            fontSize: 14, color: lightTextColor, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontSize: 12, color: lightTextColor),
      ),
      iconTheme: IconThemeData(
        color: lightTextColor,
        size: 24,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(primaryColor),
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        elevation: MaterialStatePropertyAll(3),
        iconColor: MaterialStatePropertyAll(lightTextColor),
      )));
}
