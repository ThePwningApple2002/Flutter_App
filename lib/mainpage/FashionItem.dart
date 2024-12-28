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
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '\$${price.toStringAsFixed(2)}',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color.fromARGB(255, 132, 132, 132),
            ),
          ),
        ],
      ),
    );
  }
}
