import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/home.png')),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/reorder.png')),
          label: 'Reorder',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/shopping_cart.png')),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/profile.png')),
          label: 'Profile',
        ),
      ],
    );
  }
}