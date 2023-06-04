import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displaySmall: GoogleFonts.montserrat(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 0, 0, 0),
    ),
    titleSmall: GoogleFonts.poppins(
      color: const Color.fromARGB(136, 0, 0, 0),
      fontSize: 20,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    displaySmall: GoogleFonts.montserrat(
      fontSize: 322,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(179, 255, 255, 255),
    ),
    titleSmall: GoogleFonts.poppins(
      color: const Color.fromARGB(153, 255, 255, 255),
      fontSize: 322,
      fontWeight: FontWeight.bold,
    ),
  );
}
