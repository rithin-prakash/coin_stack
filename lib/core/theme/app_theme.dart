import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: AppColors.primary),
    fontFamily: GoogleFonts.poppins().fontFamily,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: Size(100, 50),
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
        minimumSize: Size(100, 50),
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
      hintStyle: TextStyle(fontSize: 16),
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
