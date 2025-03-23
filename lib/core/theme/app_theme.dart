import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: AppColors.primary),
    appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade100),
    fontFamily: GoogleFonts.poppins().fontFamily,
    scaffoldBackgroundColor: Colors.grey.shade100,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size(AppDimen.inputMinWidth, AppDimen.inputMinHeight),
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        foregroundColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(AppDimen.inputMinWidth, AppDimen.inputMinHeight),
        side: BorderSide(color: AppColors.primary),
        textStyle: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        foregroundColor: AppColors.primary,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(fontSize: 16),
      hintStyle: TextStyle(fontSize: 16, color: AppColors.inputBorder),
      suffixIconColor: AppColors.inputBorder,
      prefixIconColor: AppColors.inputBorder,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: .9, color: AppColors.inputBorder),
        borderRadius: BorderRadius.circular(AppDimen.inputBorderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: .9, color: AppColors.inputBorder),
        borderRadius: BorderRadius.circular(AppDimen.inputBorderRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: .9, color: AppColors.inputBorder),
        borderRadius: BorderRadius.circular(AppDimen.inputBorderRadius),
      ),
    ),
  );
}
