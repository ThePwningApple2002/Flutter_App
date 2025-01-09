import 'package:aplikacijica/mainpage/models.dart';
import 'package:flutter/material.dart';
import 'package:aplikacijica/mainpage/FashionItem.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FashionItemProvoider>(
      builder: (context, productsProvider, child) {
        final products = productsProvider.products;
        
        return GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8),
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return FashionItem(
              id: product['id'],
              name: product['name'],
              price: product['price'],
              imageUrl: product['imageUrl'],
            );
          },
        );
      },
    );
  }
 
}
