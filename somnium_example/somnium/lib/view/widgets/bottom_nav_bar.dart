import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      child: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 30),
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/house-24px.png"),
                color: Colors.white,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Group 8894.png"),
                color: Colors.white,
                size: 30,
              ),
              label: "Music"),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 70,
              width: 60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ImageIcon(
                    AssetImage("assets/Rectangle 4283.png"),
                    color: Color.fromARGB(255, 16, 105, 179),
                    size: 60,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 17,
                        child: ImageIcon(
                          AssetImage("assets/Frame 969.png"),
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Positioned(
                        bottom: 3, // Adjust this value
                        child: Text(
                          "Sleep Now",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Frame 967.png"),
                color: Colors.white,
                size: 30,
              ),
              label: "Insight"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Frame 967 (1).png"),
                color: Colors.white,
                size: 30,
              ),
              label: "Profile"),
        ],
        backgroundColor: const Color(0xFF0D0338),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
