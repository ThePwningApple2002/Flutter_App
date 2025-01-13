import 'package:aplikacija2/view/pages/main_page.dart';
import 'package:flutter/material.dart';

class RedirectDugme extends StatelessWidget {

  final String name;

  const RedirectDugme({
    required this.name
  });



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );


      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 35, 116, 221),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 16,
        ),
      ),
    );
  }
}
