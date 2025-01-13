import 'package:flutter/material.dart';
import './models.dart';


class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(height: 16.0),  // Add vertical spacing here
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: CartContent(),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 246, 246),
    );
  }
}

