import 'package:aplikacijica/productpage/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:aplikacijica/mycartpage/models.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final Color color;
  final String size;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 130,
              width: 95,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 14),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.all(14), 
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        size,
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/delete_outline.png"),
              color: const Color.fromARGB(255, 255, 131, 123),
            ),
            iconSize: 32,
            onPressed: () {
              Provider.of<Cartitemsprovider>(context, listen: false).removeFromCart(id);
            },
          ),
        ],
      ),
    );
  }
}
