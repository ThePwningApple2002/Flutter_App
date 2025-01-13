import 'package:flutter/material.dart';
import './models.dart';

class ProductPage extends StatefulWidget {
  final String id;
  final String name;
  final double price;
  final String imageUrl;

  ProductPage({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String selectedSize = 'M';
  Color selectedColor = Colors.grey[400]!;

  final List<String> sizes = ['S', 'M', 'L', 'XL'];
  final List<Color> colors = [
    Colors.grey[400]!,
    Colors.red[300]!,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            ProductImage(imageUrl: widget.imageUrl),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16), // Changed this line
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductHeader(name: widget.name, price: widget.price),
                  SizedBox(height: 24),
                  SizeSelector(
                    sizes: sizes,
                    selectedSize: selectedSize,
                    onSizeSelected: (size) {
                      setState(() => selectedSize = size);
                    },
                  ),
                  SizedBox(height: 24),
                  ColorSelector(
                    colors: colors,
                    selectedColor: selectedColor,
                    onColorSelected: (color) {
                      setState(() => selectedColor = color);
                    },
                  ),
                  SizedBox(height: 32),
                  AddToCartButton(productId: widget.id,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
