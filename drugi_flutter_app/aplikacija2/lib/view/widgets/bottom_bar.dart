import 'package:flutter/material.dart';
import 'package:aplikacija2/view/widgets/widgets.dart';

class BottomBar extends StatelessWidget {
  final int price;

  const BottomBar({required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textbox(
                text: "Price",
                size: 14,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              Textbox(
                text: "\$${price}",
                size: 20,
                color: const Color.fromARGB(255, 61, 197, 66),
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 6,
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Book Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}