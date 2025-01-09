import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier {
  final List<String> _favoriteItems = [];

  List<String> get favoriteItems => _favoriteItems;

  void toggleFavorite(String productId) {
    if (_favoriteItems.contains(productId)) {
      _favoriteItems.remove(productId);
    } else {
      _favoriteItems.add(productId);
    }
    notifyListeners();
  }

  bool isFavorite(String productId) {
    return _favoriteItems.contains(productId);
  }
}


