import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      titleMedium: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w500,
        fontSize: 50
      ),
      titleSmall: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w500,
        fontSize: 30,
      ),
      bodySmall: GoogleFonts.mavenPro(
        fontWeight: FontWeight.w500,
        fontSize: 20
      ),
    
  );

  static TextTheme darkTextTheme = TextTheme(
    titleMedium: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w500,
      fontSize: 50
    ),
    titleSmall: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w500,
      fontSize: 30,
      color: Colors.red
    ),
    bodySmall: GoogleFonts.mavenPro(
      fontWeight: FontWeight.w500,
      fontSize: 20
    ),
  );
}