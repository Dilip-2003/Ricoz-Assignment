import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static TextStyle discount = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w900,
    color: Color(0xFFFFFFFF),
  );

  static TextStyle rating = const TextStyle(
    fontSize: 12,
    color: Color(0xFF9B9B9B),
  );

  static TextStyle title = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w900,
      color: Color(0xFF222222),
    ),
  );

  static TextStyle brand = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Color(0xFF9B9B9B),
    ),
  );

  static TextStyle price = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xFF9B9B9B),
      decoration: TextDecoration.lineThrough,
    ),
  );

  static TextStyle discountprice = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xFFDB3022),
    ),
  );
  static TextStyle titleProductDiscount = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w900,
      color: Color(0xFF222222),
    ),
  );

  static TextStyle description = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFF222222),
    ),
  );

  static TextStyle categorieTitle = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
      height: 22,
      color: Color(0xFF222222),
    ),
  );

  static TextStyle addtoCart = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xFFFFFFFF),
    ),
  );
}
