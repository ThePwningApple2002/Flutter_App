import 'package:aplikacija2/view/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Facilities extends StatelessWidget{

  final List<String> facilities;

  const Facilities({super.key, required this.facilities});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Textbox(
          text: "Facilities",
          size: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: facilities.map((facility) {
              return Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  facility,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }







  
}