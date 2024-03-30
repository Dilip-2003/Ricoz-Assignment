import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarStyle {
  AppBarStyle._();

  static TextStyle title = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: Color(0xFF222222),
    ),
  );

  static TextStyle subTitle = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Color(0xFF9B9B9B),
    ),
  );
}
