import 'package:flutter/material.dart';
import './widgets.dart';
class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // Increased height to prevent overflow
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        children: [
          QuickAction('Your opinion', Icons.person),
          QuickAction('nemoneymusic', Icons.music_note),
          QuickAction('somnium', Icons.nightlight_round),
          QuickAction('news', Icons.newspaper),
          // Add more QuickActions as needed
        ],
      ),
    );
  }
}