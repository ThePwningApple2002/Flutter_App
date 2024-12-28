import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = screenWidth * 0.071; 

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Wrap(
        spacing: 8.0,
        children: [
          _buildChip('Trending Now', true, horizontalPadding),
          _buildChip('All', false, horizontalPadding),
          _buildChip('New', false, horizontalPadding),
        ],
      ),
    );
  }

  Widget _buildChip(String label, bool isSelected, double horizontalPadding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 10.0),
      decoration: BoxDecoration(
        color: isSelected ? const Color.fromARGB(255, 252, 111, 111) : Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: isSelected ? Colors.white : const Color.fromARGB(255, 106, 106, 106),
        ),
      ),
    );
  }
}
