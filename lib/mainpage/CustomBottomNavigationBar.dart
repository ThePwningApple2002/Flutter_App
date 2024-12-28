import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: const Color.fromARGB(255, 218, 87, 61), 
          unselectedItemColor: Colors.grey, 
        ),
      ),
      child: BottomNavigationBar(
        iconSize: 40,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/reorder.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/shopping_cart.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/person.png')),
            label: '',
          ),
        ],
      ),
    );
  }
}