import 'package:aplikacijica/ProductGrid.dart';
import 'package:aplikacijica/FilterChips.dart';
import 'package:aplikacijica/SearchField.dart';
import 'package:aplikacijica/CustomAppBar.dart';
import 'package:aplikacijica/Title.dart';
import 'package:aplikacijica/CustomBottomNavigationBar.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: FashionPage(),
    );
  }
}

class FashionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(),
            SizedBox(height: 10),
            SearchField(),
            SizedBox(height: 16),
            FilterChips(),
            SizedBox(height: 16),
            Expanded(child: ProductGrid()),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}












