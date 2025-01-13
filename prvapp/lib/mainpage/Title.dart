import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Match Your Style',
      style: GoogleFonts.poppins(fontSize: 30),
    );
  }
}
