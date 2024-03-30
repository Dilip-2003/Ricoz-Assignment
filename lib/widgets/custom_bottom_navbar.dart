import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2.0,
      backgroundColor: Colors.blue,
      // currentIndex: _selectedIndex,
      // onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Page One',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Page Two',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Page Three',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.settings),
        //   label: 'Page Four',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.notifications),
        //   label: 'Page Five',
        // ),
      ],
    );
  }
}
