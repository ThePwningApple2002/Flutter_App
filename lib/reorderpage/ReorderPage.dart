import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReorderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      appBar: AppBar(
        title: Text(
          'Reorder',
          style: GoogleFonts.poppins(fontSize: 28),
          ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Center(child: Text('Reorder Page')),
    );
  }
}