import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter, 
      ),
    );
  }
}
