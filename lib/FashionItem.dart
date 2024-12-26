import 'package:flutter/material.dart';

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
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: Image.network(imageUrl), // Prikaz slike
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('\$${price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}