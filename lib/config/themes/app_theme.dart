import 'package:flutter/material.dart';
import 'package:project/core/utils/app_colors.dart';
import 'package:project/core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hintColor,
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        )),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 24, color: Colors.white )),
  );
}
