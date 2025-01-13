import 'package:flutter/material.dart';
import 'package:aplikacija2/view/widgets/widgets.dart';


class LocationTitleSel extends StatelessWidget{

  final String name;
  final double grade;
  final int reviews;

  const LocationTitleSel({ required this.name, required this.grade, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textbox(
              text: name,
              size: 24,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            TextButton(
              onPressed: () {},
              child: Textbox(text: 'Show map', size: 14, color: Colors.blue, fontWeight: FontWeight.w700,),
            ),
          ],
        ),
        Row(
          children: [
            ImageIcon(
              AssetImage("assets/star.png"),
              size: 18,
              color: const Color.fromARGB(255, 197, 177, 0),
            ),
            SizedBox(width: 4),
            Textbox(
              text: grade.toString(),
              size: 10,
              color: const Color.fromARGB(255, 116, 115, 115),
              fontWeight: FontWeight.w500,
            ),
            Textbox(
              text: " (${reviews} Reviews)",
              size: 10,
              color: const Color.fromARGB(255, 116, 115, 115),
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }




  
}