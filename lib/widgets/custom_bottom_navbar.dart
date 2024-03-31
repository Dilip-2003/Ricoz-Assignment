import 'package:flutter/material.dart';
import 'package:ricoz_assignment/constant/bottomNavbar/bottomnavbar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  bool isFill1 = false;
  bool isFill2 = false;
  bool isFill3 = false;
  bool isFill4 = false;
  bool isFill5 = false;
  @override
  void initState() {
    super.initState();
    isFill2 = true;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 2.0,
      color: const Color(0xFFFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFill1 = !isFill1;
                  isFill2 = false;
                  isFill3 = false;
                  isFill4 = false;
                  isFill5 = false;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                    color: isFill1
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B),
                  ),
                  Text(
                    'Home',
                    style: BottomNavbar.bottomNavbar1(isFill1
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFill2 = !isFill2;
                  isFill1 = false;
                  isFill3 = false;
                  isFill4 = false;
                  isFill5 = false;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.trolley,
                    size: 30,
                    color: isFill2
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B),
                  ),
                  Text(
                    'Shop',
                    style: BottomNavbar.bottomNavbar1(isFill2
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFill3 = !isFill3;
                  isFill2 = false;
                  isFill1 = false;
                  isFill4 = false;
                  isFill5 = false;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    size: 30,
                    color: isFill3
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B),
                  ),
                  Text(
                    'Bag',
                    style: BottomNavbar.bottomNavbar1(isFill3
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFill4 = !isFill4;
                  isFill2 = false;
                  isFill3 = false;
                  isFill1 = false;
                  isFill5 = false;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: isFill4
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B),
                  ),
                  Text(
                    'Favorites',
                    style: BottomNavbar.bottomNavbar1(isFill4
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isFill5 = !isFill5;
                  isFill2 = false;
                  isFill3 = false;
                  isFill4 = false;
                  isFill1 = false;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    size: 30,
                    color: isFill5
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B),
                  ),
                  Text(
                    'Profile',
                    style: BottomNavbar.bottomNavbar1(isFill5
                        ? const Color(0xFFDB3022)
                        : const Color(0xFF9B9B9B)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
