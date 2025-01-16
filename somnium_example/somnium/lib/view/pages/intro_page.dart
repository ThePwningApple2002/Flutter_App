import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          context.go('/main_page');
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/intro.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          'assets/moon.png',
                          fit: BoxFit.contain,
                        ),
                      )),
                  Text(
                    "wake up rested with...",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Femili',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
