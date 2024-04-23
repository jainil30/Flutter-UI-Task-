import 'package:flutter/material.dart';
import 'package:furniture_app/common/colors.dart';

/*Created By: Tushar Jethva
  used_for: for light and dark theme
*/
ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: lightGreyColor,
    hoverColor: white,
    fontFamily: "Switzer",
    cardColor: imageBackColorL,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 32, color: darkColor, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(
          fontSize: 24, color: darkColor, fontWeight: FontWeight.w500),
      displaySmall: TextStyle(fontSize: 16, color: darkColor),
      titleLarge: TextStyle(fontSize: 16, color: darkColor),
      titleMedium: TextStyle(fontSize: 13, color: darkColor),
      titleSmall: TextStyle(fontSize: 11, color: darkColor),
      bodyLarge: TextStyle(fontSize: 16, color: darkColor),
      bodyMedium: TextStyle(
          fontSize: 14, color: darkColor, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 12, color: darkColor),
    ),
    iconTheme: const IconThemeData(
      color: darkColor,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(primaryColor),
        textStyle: const MaterialStatePropertyAll(
            TextStyle(fontSize: 16, color: lightTextColor)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )),
        elevation: const MaterialStatePropertyAll(0),
        iconColor: const MaterialStatePropertyAll(lightTextColor),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: white,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: primaryColor),
        unselectedIconTheme: IconThemeData(color: greyColor),
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        shadowColor: darkColor,
        foregroundColor: darkTextColor,
        surfaceTintColor: Colors.transparent),
    datePickerTheme: DatePickerThemeData(
        backgroundColor: Colors.grey.shade300,
        headerBackgroundColor: Colors.grey.shade50,
        headerForegroundColor: darkColor),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: darkColor,
    hoverColor: darkGreyColor,
    cardColor: imageBackColorD,
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
    iconTheme: const IconThemeData(
      color: white,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(primaryColor),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(fontSize: 16, color: lightTextColor),
      ),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      elevation: const MaterialStatePropertyAll(3),
      iconColor: const MaterialStatePropertyAll(lightTextColor),
    )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: darkGreyColor,
        selectedIconTheme: IconThemeData(color: primaryColor),
        unselectedIconTheme: IconThemeData(color: greyColor),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        shadowColor: lightTextColor,
        foregroundColor: lightTextColor,
        surfaceTintColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: lightTextColor)),
    datePickerTheme: DatePickerThemeData(
        backgroundColor: darkGreyColor,
        headerBackgroundColor: Color.fromRGBO(41, 47, 45, 1),
        headerForegroundColor: Color.fromRGBO(255, 255, 255, 1)),
  );
}
