import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textbox extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight? fontWeight; 
  final TextDecoration? decoration; 
  final FontStyle? fontStyle; 

  const Textbox({
    required this.text,
    required this.size,
    required this.color,
    this.fontWeight, 
    this.decoration,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: size, 
        color: color,
        fontWeight: fontWeight, 
        decoration: decoration,
        fontStyle: fontStyle,
      ),
    );
  }
}
