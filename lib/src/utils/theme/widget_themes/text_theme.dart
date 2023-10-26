import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      titleMedium: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w600,
        fontSize: 30
      ),
      titleSmall: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      bodyMedium: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w600,
        fontSize: 20
      ),
      bodySmall: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w500,
        fontSize: 20
      ),
  );

  static TextTheme darkTextTheme = TextTheme(
    titleMedium: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w600,
      fontSize: 40
    ),
    titleSmall: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    bodyMedium: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w600,
      fontSize: 20
    ),
    bodySmall: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w500,
      fontSize: 20
    ),
  );
}