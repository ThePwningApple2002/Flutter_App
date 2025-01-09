import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplikacijica/productpage/models.dart';
import 'package:aplikacijica/mainpage/models.dart';
import './models.dart';
import 'package:google_fonts/google_fonts.dart';

class CartContent extends StatefulWidget {
  @override
  _CartContentState createState() => _CartContentState();
}

class _CartContentState extends State<CartContent> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<Cartitemsprovider, FashionItemProvoider>(
      builder: (context, cartProvider, productProvider, child) {
        final cartProducts = productProvider.products
            .where((product) => cartProvider.cartItems.contains(product['id']))
            .toList();

        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              if (cartProducts.isEmpty) 
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 64,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Your cart is empty!',
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Continue Shopping'),
                        ),
                      ],
                    ),
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    itemCount: cartProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      final product = cartProducts[index];
                      return CartItem(
                        id: product['id'],
                        name: product['name'],
                        price: product['price'],
                        imageUrl: product['imageUrl'],
                        color: product['color'],
                        size: product['size'],
                      );
                    },
                  ),
                ),
              if (cartProducts.isNotEmpty) ...[
                CartSummary(
                  cartItems: cartProducts.map((product) => CartItem(
                    id: product['id'],
                    name: product['name'],
                    price: product['price'],
                    imageUrl: product['imageUrl'],
                    color: product['color'],
                    size: product['size'],
                  )).toList(),
                  shippingCost: 0.0,
                ),
                CheckoutButton(),
              ],
            ],
          ),
        );
      },
    );
  }
}