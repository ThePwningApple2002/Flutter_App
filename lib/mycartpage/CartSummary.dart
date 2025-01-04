import 'package:flutter/material.dart';
import './models.dart';

class CartSummary extends StatelessWidget {
  final List<CartItem> cartItems;
  final double shippingCost;

  CartSummary({
    required this.cartItems,
    this.shippingCost = 0.0,
  });

  double get subtotal {
    return cartItems.fold(0.0, (sum, item) => sum + item.price);
  }

  double get grandTotal {
    return subtotal + shippingCost;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SummaryRow(label: 'Total:', amount: subtotal, isBold: false),
        SummaryRow(label: 'Shipping:', amount: shippingCost, isBold: false),
        Divider(),
        SummaryRow(
          label: 'Grand Total:',
          amount: grandTotal,
          isBold: true, 
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
