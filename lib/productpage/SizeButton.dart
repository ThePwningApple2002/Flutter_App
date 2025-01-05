import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  const SizeButton({
    required this.size,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color:  Colors.white,
         
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            size,
            style: GoogleFonts.poppins(
              color: isSelected ? Color(0xFFE57373)  : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

