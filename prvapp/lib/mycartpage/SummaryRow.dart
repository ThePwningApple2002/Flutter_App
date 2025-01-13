import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryRow extends StatelessWidget {
  final String label;
  final double amount;
  final bool isBold;  // New parameter to determine if the amount should be bold

  SummaryRow({
    required this.label,
    required this.amount,
    required this.isBold,  // Initialize the new parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 124, 124, 124),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '\$${amount.toStringAsFixed(2)}',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: isBold ? FontWeight.bold : FontWeight.w600,  // Use the isBold parameter
                color: isBold ? Color.fromARGB(255, 90, 90, 90) : Color.fromARGB(255, 134, 134, 134),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

