import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  
  const BottomNavBar({
    super.key,
    this.currentIndex = 0,  // Set default value to 0
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/home_page');
              break;
            case 1:
              context.go('/music_page');
              break;
            case 2:
              context.go('/sleep_page');
              break;
            case 3:
              context.go('/insight_page');
              break;
            case 4:
              context.go('/profile_page');
              break;
          }
        },
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
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/Group 8894.png"),
              color: Colors.white,
              size: 30,
            ),
            label: "Music"
          ),
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
                        bottom: 3,
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
            label: "Insight"
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/Frame 967 (1).png"),
              color: Colors.white,
              size: 30,
            ),
            label: "Profile"
          ),
        ],
        backgroundColor: const Color(0xFF0D0338),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
