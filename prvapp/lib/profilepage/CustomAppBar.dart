import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarP extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
  return AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
          fontSize: 28,
          ),
          ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      );
    
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  }