import 'package:flutter/foundation.dart';


class Cartitemsprovider with ChangeNotifier{
  final List<String> _cartItems = [];

  List<String> get cartItems => _cartItems;

  void putInCart(String productId){
    _cartItems.add(productId);
    notifyListeners();
  }

  void removeFromCart(String productId){
    _cartItems.remove(productId);
    notifyListeners();
  }

}