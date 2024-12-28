import 'package:flutter/material.dart';
import 'package:aplikacijica/mainpage/FashionItem.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Haljina',
      'price': 29.99,
      'imageUrl': 'https://imgs.search.brave.com/td0AYySkGujncuZ-pCPRQ4cI35BHZqGX83iTCAhhkcU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzk2Lzc0Lzgy/LzM2MF9GXzk2NzQ4/MjM0X0wxT3BRbEU4/TFFKbW1qR3BlUVp2/Y09WT2toeENQekNh/LmpwZw',
    },
    {
      'name': 'Druga haljina',
      'price': 59.99,
      'imageUrl': 'https://britishretro.co.uk/wp-content/uploads/2020/03/002-dee-dee-navy-drape-50s-ful-circle-dress.jpg',
    },
    {
      'name': 'Druga haljina',
      'price': 59.99,
      'imageUrl': 'https://britishretro.co.uk/wp-content/uploads/2020/03/002-dee-dee-navy-drape-50s-ful-circle-dress.jpg',
    },
    
    {
      'name': 'Druga haljina',
      'price': 59.99,
      'imageUrl': 'https://britishretro.co.uk/wp-content/uploads/2020/03/002-dee-dee-navy-drape-50s-ful-circle-dress.jpg',
    },
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 8),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.5, // Adjust this value to control item height
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
