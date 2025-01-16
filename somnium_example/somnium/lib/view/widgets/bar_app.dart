import 'package:flutter/material.dart';

class BarApp extends StatelessWidget implements PreferredSizeWidget {
  const BarApp({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: const Color(0xFF0D0338),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Music',
          style: TextStyle(
            fontSize: 20,
            color: const Color.fromARGB(255, 0, 173, 238),
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
