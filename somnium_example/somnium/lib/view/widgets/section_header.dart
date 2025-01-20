 import 'package:flutter/material.dart';

Widget SectionHeader(String title, String action) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (action.isNotEmpty)
            Text(
              action,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
        ],
      ),
    );
  }
