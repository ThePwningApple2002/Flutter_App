import 'package:aplikacijica/productpage/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeSelector extends StatelessWidget {
  final List<String> sizes;
  final String selectedSize;
  final Function(String) onSizeSelected;

  const SizeSelector({
    required this.sizes,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 80, 80, 80)
          ),
        ),
        SizedBox(height: 12),
        Row(
          children: sizes.map((size) {
            return Padding(
              padding: EdgeInsets.only(right: 8),
              child: SizeButton(
                size: size,
                isSelected: selectedSize == size,
                onTap: () => onSizeSelected(size),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

