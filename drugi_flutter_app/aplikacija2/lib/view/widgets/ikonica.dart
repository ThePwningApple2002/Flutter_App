import 'package:flutter/material.dart';

class Ikonica extends StatelessWidget{

  final String filename;
  final double size;
  final Color color;

  const Ikonica({
    required this.filename, 
    required this.size, 
    required this.color
    
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ImageIcon(
        AssetImage(filename)),
        iconSize: size,
        color: color,
    
      onPressed: (){} );}
}