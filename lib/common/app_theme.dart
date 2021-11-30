import 'package:ai_medicare/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    primaryColor: Colors.grey.shade500,
    textTheme: GoogleFonts.poppinsTextTheme(),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.grey[900],
    iconTheme: const IconThemeData(color: AppColors.appPrimaryColor),
    primaryColor: AppColors.appPrimaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(bodyText1: TextStyle(color: Colors.white))),
  );
}
