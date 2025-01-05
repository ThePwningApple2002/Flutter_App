
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductHeader extends StatelessWidget {
  final String name;
  final double price;

  const ProductHeader({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 80, 80, 80)
          ),
        ),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 80, 80, 80)
          ),
        ),
      ],
    );
  }
}
