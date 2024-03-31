import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ricoz_assignment/constant/textstyle/textstyle.dart';

class CustomAppBarProductDetails extends StatefulWidget {
  const CustomAppBarProductDetails({super.key, required this.title});
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
          style: TextStyles.categorieTitle,
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
