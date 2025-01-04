import 'package:flutter/material.dart';
import './models.dart';

class CartContent extends StatefulWidget {
  @override
  _CartContentState createState() => _CartContentState();
}

class _CartContentState extends State<CartContent> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Jacket Jeans',
      'price': 37.9,
      'imageUrl': 'https://imgs.search.brave.com/td0AYySkGujncuZ-pCPRQ4cI35BHZqGX83iTCAhhkcU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzk2Lzc0Lzgy/LzM2MF9GXzk2NzQ4/MjM0X0wxT3BRbEU4/TFFKbW1qR3BlUVp2/Y09WT2toeENQekNh/LmpwZw',
      'color': Colors.blue,
      'size': 'L',
    },
    {
      'name': 'Acrylic Sweater',
      'price': 35.9,
      'imageUrl': 'https://alyceparis.com/cdn/shop/files/7106_IVORY_02_1000x.jpg?v=1729785546',
      'color': Colors.pink,
      'size': 'M',
    },
  ];

  List<CartItem> get cartItems {
    return products.map((product) {
      return CartItem(
        name: product['name'],
        price: product['price'],
        imageUrl: product['imageUrl'],
        color: product['color'],
        size: product['size'],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return CartItem(
                  name: products[index]['name'],
                  price: products[index]['price'],
                  imageUrl: products[index]['imageUrl'],
                  color: products[index]['color'],
                  size: products[index]['size'],
                );
              },
            ),
          ),
          CartSummary(
            cartItems: cartItems,
            shippingCost: 0.0,
          ),
          CheckoutButton(),
        ],
      ),
    );
  }
}
