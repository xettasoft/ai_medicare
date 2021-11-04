import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          elevation: 0,
          color: AppColors.whiteColor,
          foregroundColor: Colors.grey.shade500),
      scaffoldBackgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColors.appPrimaryColor),
      primaryColor: Colors.grey.shade500);

  // Dark Theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        color: AppColors.appPrimaryColor,
      ),
      scaffoldBackgroundColor: Colors.grey[900],
      iconTheme: const IconThemeData(color: AppColors.appPrimaryColor),
      primaryColor: AppColors.appPrimaryColor);
}
