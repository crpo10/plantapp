import 'package:flutter/material.dart';

class CustomBottonNavbar extends StatelessWidget {
  const CustomBottonNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
