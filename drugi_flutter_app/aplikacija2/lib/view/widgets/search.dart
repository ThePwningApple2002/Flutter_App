
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        
        color: const Color.fromARGB(255, 247, 247, 247),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'Find things to do',
            hintStyle: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color.fromARGB(255, 170, 170, 170)
              ),
            prefixIcon: ImageIcon(
              AssetImage("assets/Search.png") ,
              size: 20,
              color: const Color.fromARGB(255, 170, 170, 170)
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 6,
            ),
          ),
        ),
      ),
    );
  }
}
