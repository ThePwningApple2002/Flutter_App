// Create a separate widget for QuickActions
import 'package:flutter/material.dart';




Widget QuickAction(String label, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    child: SizedBox(
      width: 100, // Fixed width for each item
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
  );
}