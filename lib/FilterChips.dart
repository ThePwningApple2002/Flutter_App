import 'package:flutter/material.dart';

class FilterChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Optional padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spreads chips across the row
        children: [
          FilterChip(
            label: Text('Trending Now'),
            onSelected: (bool value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // More rounded edges
            ),
          ),
          FilterChip(
            label: Text('All'),
            onSelected: (bool value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // More rounded edges
            ),
          ),
          FilterChip(
            label: Text('New'),
            onSelected: (bool value) {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // More rounded edges
            ),
          ),
        ],
      ),
    );
  }
}