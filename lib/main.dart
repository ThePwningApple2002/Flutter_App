import 'package:aplikacijica/mainpage/models.dart';
import 'package:aplikacijica/mycartpage/models.dart';
import 'package:aplikacijica/profilepage/models.dart';
import 'package:aplikacijica/reorderpage/models.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion App',
      home: MainScreen(), // Change this to MainScreen
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}


