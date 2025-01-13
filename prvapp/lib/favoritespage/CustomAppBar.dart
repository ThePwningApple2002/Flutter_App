import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarF extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {

    return AppBar(
        title: Text(
          'Favorites',
          style: GoogleFonts.poppins(
            fontSize: 28,
            color: Colors.black,
          ),
        ),
      );


  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}