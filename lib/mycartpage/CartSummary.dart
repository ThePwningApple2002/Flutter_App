import 'package:flutter/material.dart';
import './models.dart';


class CartSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SummaryRow(label: 'Total:', amount: 119.7, isBold: false),
        SummaryRow(label: 'Shipping:', amount: 0.0, isBold: false),
        Divider(),
        SummaryRow(
          label: 'Grand Total:',
          amount: 119.7,
          isBold: true,  // Make this amount bold
        ),
        SizedBox(height: 20),
      ],
    );
  }
}