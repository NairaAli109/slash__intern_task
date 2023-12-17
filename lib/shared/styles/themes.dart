import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';


ThemeData darkTheme=ThemeData(
  scaffoldBackgroundColor:black,
  // primarySwatch:,
  appBarTheme: const AppBarTheme(
      titleSpacing: 20,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: black,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color:white,
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
      iconTheme:
      IconThemeData(color: Colors.white, size: 30)
  ),
  textTheme:  TextTheme(
    bodyMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: lightGrey,
    ),
  ),
);

ThemeData lightTheme= ThemeData(
  // primarySwatch:Colors.cyan,
  scaffoldBackgroundColor: lightThemeColor,
  appBarTheme:  AppBarTheme(
      titleSpacing: 20,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: lightThemeColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: lightThemeColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        color: black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme:
      const IconThemeData(color: black, size: 30)),
  textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: black,
      )
  ),
);