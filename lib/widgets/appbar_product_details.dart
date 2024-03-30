import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarProductDetails extends StatefulWidget {
  CustomAppBarProductDetails({super.key, required this.title});
  final String title;
  @override
  State<CustomAppBarProductDetails> createState() =>
      _CustomAppBarProductDetailsState();
}

class _CustomAppBarProductDetailsState
    extends State<CustomAppBarProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
            color: Color(0xFF222222),
          ),
        ),
        Text(
          widget.title.toUpperCase(),
          style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  height: 22,
                  color: Color(0xFF222222))),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Color(0xFF222222),
            ))
      ],
    );
  }
}
