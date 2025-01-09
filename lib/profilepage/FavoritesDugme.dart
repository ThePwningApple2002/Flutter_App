import 'package:flutter/material.dart';
import 'package:aplikacijica/favoritespage/models.dart';

class FavoritesDugme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FavoritesPage(),
            ),
          );
        },
        icon: Icon(Icons.favorite),
        label: Text('Favorites'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 218, 87, 61),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
