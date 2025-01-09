import 'package:aplikacijica/mainpage/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../mainpage/FashionItem.dart';
import 'models.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: CustomAppBarF(),
      body: Consumer2<FavoriteProvider, FashionItemProvoider>(
        builder: (context, favoriteProvider, fashionItemProvider, child) {
          final favoriteProducts = fashionItemProvider.products
              .where((product) => favoriteProvider.favoriteItems
              .contains(product['id']))
              .toList();

          if (favoriteProducts.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 64,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No favorites yet!',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()),(Route<dynamic> route) => false,);
                    },
                    child: Text('Browse Products'),
                  ),
                ],
              ),
            );
          }

          return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            itemCount: favoriteProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.5,
            ),
            itemBuilder: (BuildContext context, int index) {
              final product = favoriteProducts[index];
              return FashionItem(
                id: product['id'],
                name: product['name'],
                price: product['price'],
                imageUrl: product['imageUrl'],
              );
            },
          );
        },
      ),
    );
  }
}
