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
        fixedSize: Size(70, 50),
        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        foregroundColor: Colors.white,
      ),
    ),
  );
}
