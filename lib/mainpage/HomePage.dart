import 'package:flutter/material.dart';
import './models.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FashionPage(); // Your current main page
  }
}

class FashionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(),
            SizedBox(height: 10),
            SearchField(),
            SizedBox(height: 16),
            FilterChips(),
            SizedBox(height: 16),
            Expanded(
              child: ProductGrid(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
