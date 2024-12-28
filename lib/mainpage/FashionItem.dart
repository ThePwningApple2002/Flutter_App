import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionItem extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;

  FashionItem({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Image.network(imageUrl), // Display image
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            name,
            style: GoogleFonts.poppins(fontSize: 20),
          ),
          Text(
            '\$${price.toStringAsFixed(2)}',
            style: GoogleFonts.poppins(
              fontSize: 20,
              color : const Color.fromARGB(255, 132, 132, 132)
              ),
          ),
        ],
      ),
    );
  }
}
