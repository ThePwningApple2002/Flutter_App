import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(9),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: GoogleFonts.poppins(
            fontSize: 20,
            color: Color.fromARGB(255, 164, 163, 163)
            ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[400],
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 6,
          ),
        ),
      ),
    );
  }
}
