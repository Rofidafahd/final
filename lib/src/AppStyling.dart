import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appColors.dart';

class AppTextStyles {
  static TextStyle displayLarge = GoogleFonts.agdasima(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryHeaderColor,
  );

  static TextStyle bodyLarge = GoogleFonts.agdasima(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle displayMedium = GoogleFonts.abhayaLibre(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    backgroundColor: AppColors.scaffoldBackgroundColor,
  );

  static TextStyle titleMedium = GoogleFonts.abhayaLibre(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle bodyMedium = GoogleFonts.abhayaLibre(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryColor,
  );
  static TextStyle bodyMediumImportant = GoogleFonts.abhayaLibre(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle bodySmall = GoogleFonts.abhayaLibre(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryColor,
  );
}
