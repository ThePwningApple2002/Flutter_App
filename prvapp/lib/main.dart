import 'package:aplikacijica/mainpage/models.dart';
import 'package:aplikacijica/productpage/CartItemsProvider.dart';
// import 'package:aplikacijica/mycartpage/models.dart';
// import 'package:aplikacijica/profilepage/models.dart';
// import 'package:aplikacijica/reorderpage/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Cartitemsprovider()),
        ChangeNotifierProvider(create: (_) => FashionItemProvoider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion App',
      home: HomePage(),
    );
  }
}
