import 'package:flutter/material.dart';

class BackgroundMain extends StatelessWidget {
  const BackgroundMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage('assets/stars.png'),
          repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }
}
