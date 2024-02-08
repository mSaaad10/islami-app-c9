import 'package:flutter/material.dart';

class MyThemeData {
  static bool isDarkEnabled = true;
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color darkSecondaryColor = Color(0xFFFACC1D);
  static const Color scaffoldBackgroundColor = Colors.transparent;
  static const Color lightAppBarIconColor = Colors.black;
  static const Color darkAppBarIconColor = Colors.white;
  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      cardTheme: CardTheme(color: Colors.white),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
        bodyMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(size: 40)),
      cardColor: Colors.white,
      bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24)))),
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimaryColor,
        primary: lightPrimaryColor,
        secondary: Color(0x6BB7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: lightPrimaryColor,
      ),
      dividerColor: lightPrimaryColor);
  static final ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    cardTheme: CardTheme(color: darkPrimaryColor),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimaryColor,
        primary: darkPrimaryColor,
        secondary: darkPrimaryColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        background: darkPrimaryColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedItemColor: darkSecondaryColor,
        selectedIconTheme: IconThemeData(size: 40)),
    dividerColor: darkSecondaryColor,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w400, color: Colors.yellow),
    ),
  );
}
