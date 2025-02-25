import 'package:aplikacijica/mainpage/FavoriteProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikacijica/productpage/models.dart';
import 'package:provider/provider.dart';

class FashionItem extends StatefulWidget {
  final String id;
  final String name;
  final double price;
  final String imageUrl;

  FashionItem({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  _FashionItemState createState() => _FashionItemState();
}

class _FashionItemState extends State<FashionItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(
      builder: (context, favoriteProvider, child) {
        final isFavorite = favoriteProvider.isFavorite(widget.id);
        
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(
                  id: widget.id,
                  name: widget.name,
                  price: widget.price,
                  imageUrl: widget.imageUrl,
                ),
              ),
            );
          },
          child: Container(
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
                            widget.imageUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                              icon: Icon(
                                isFavorite ? Icons.favorite : Icons.favorite_outline,
                                color: const Color.fromARGB(255, 226, 66, 66),
                              ),
                              iconSize: 20.0,
                              onPressed: () {
                                favoriteProvider.toggleFavorite(widget.id);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  widget.name,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$${widget.price.toStringAsFixed(2)}',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 132, 132, 132),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
