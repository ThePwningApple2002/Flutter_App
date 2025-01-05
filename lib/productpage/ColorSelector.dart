import 'package:aplikacijica/productpage/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorSelector extends StatelessWidget {
  final List<Color> colors;
  final Color selectedColor;
  final Function(Color) onColorSelected;

  const ColorSelector({
    required this.colors,
    required this.selectedColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Colors',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 80, 80, 80)
          ),
        ),
        SizedBox(height: 12),
        Row(
          children: colors.map((color) {
            return Padding(
              padding: EdgeInsets.only(right:12),
              child: ColorButton(
                color: color,
                isSelected: selectedColor == color,
                onTap: () => onColorSelected(color),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

