import 'package:flutter/material.dart';
import 'package:aplikacijica/FashionItem.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'aljina',
      'price': 29.99,
      'imageUrl': 'https://imgs.search.brave.com/td0AYySkGujncuZ-pCPRQ4cI35BHZqGX83iTCAhhkcU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzk2Lzc0Lzgy/LzM2MF9GXzk2NzQ4/MjM0X0wxT3BRbEU4/TFFKbW1qR3BlUVp2/Y09WT2toeENQekNh/LmpwZw',
    },
    {
      'name': 'Fashion Item 2',
      'price': 59.99,
      'imageUrl': 'https://via.placeholder.com/150',
    },
    // Add more fashion items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FashionItem(
          name: products[index]['name'],
          price: products[index]['price'],
          imageUrl: products[index]['imageUrl'],
        );
      },
    );
  }
}
