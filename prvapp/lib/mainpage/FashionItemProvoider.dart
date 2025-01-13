import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FashionItemProvoider with ChangeNotifier {

    final List<Map<String, dynamic>> _products = [
    {
      'id': '1',
      'name': 'Haljina',
      'price': 29.99,
      'imageUrl': 'https://imgs.search.brave.com/td0AYySkGujncuZ-pCPRQ4cI35BHZqGX83iTCAhhkcU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzk2Lzc0Lzgy/LzM2MF9GXzk2NzQ4/MjM0X0wxT3BRbEU4/TFFKbW1qR3BlUVp2/Y09WT2toeENQekNh/LmpwZw',
      'color' : Colors.blue,
      'size' : 'L'
    
    },
    {
      'id': '2',
      'name': 'Druga haljina',
      'price': 59.99,
      'imageUrl': 'https://britishretro.co.uk/wp-content/uploads/2020/03/002-dee-dee-navy-drape-50s-ful-circle-dress.jpg',
      'color' : Colors.blue,
      'size' : 'L'
    },
    {
      'id': '3',
      'name': 'Druga haljina',
      'price': 59.99,
      'imageUrl': 'https://britishretro.co.uk/wp-content/uploads/2020/03/002-dee-dee-navy-drape-50s-ful-circle-dress.jpg',
      'color' : Colors.blue,
      'size' : 'L'
    },
    
    {
      'id': '4',
      'name': 'Druga haljina',
      'price': 59.99,
      'imageUrl': 'https://britishretro.co.uk/wp-content/uploads/2020/03/002-dee-dee-navy-drape-50s-ful-circle-dress.jpg',
      'color' : Colors.blue,
      'size' : 'L'
    },
    
    
  ];


  List<Map<String, dynamic>> get products => [..._products];

  List<Map<String, dynamic>> getFashionItemsbyids(List<String> ids){
    return _products.where((product) => ids.contains(product['id'])).toList();
  }

}