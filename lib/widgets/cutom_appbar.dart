import 'package:flutter/material.dart';
import 'package:ricoz_assignment/constant/appbar/appbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            'Products',
            style: AppBarStyle.title,
          ),
          Text(
            'Super summer sale',
            style: AppBarStyle.subTitle,
          )
        ],
      ),
    );
  }
}
