import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_assignment/constant/textstyle/textstyle.dart';

class CustomButtonNavbar extends StatelessWidget {
  const CustomButtonNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Stack(
      children: [
        Container(
          height: height * 0.1,
          width: width,
          color: const Color(0xFFFFFFFF),
        ),
        Positioned(
          bottom: 5,
          child: InkWell(
            onTap: () {
              if (kDebugMode) {
                print('add to cart ');
              }
            },
            child: Container(
              height: height * 0.07,
              width: width * 0.9,
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.05,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFDB3022),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                    color: const Color(0xFFD32626).withOpacity(0.25),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'ADD TO CART',
                  style: TextStyles.addtoCart,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
