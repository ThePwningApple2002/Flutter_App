import 'package:aplikacija2/view/widgets/text_box.dart';
import 'package:aplikacija2/view/widgets/dugme.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Rectangle 988.png'),
          fit: BoxFit.cover,
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text("Aspen",
              style: TextStyle(
                fontSize: 120,
                fontFamily: 'Femili',
                color: Colors.white,
              )),
        ),
      ),
      Column(children: [
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Aligns content to bottom
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns text to left
                children: [
          
                  Textbox(text: "Plan your", size: 20, color: Colors.white),
                  Textbox(text: "Luxurious\nVacation", size: 40, color: Colors.white,),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, bottom: 40, top: 15),
          child: Row(
            children: [
              Expanded(
                child: RedirectDugme(name: "Explore"),
              ),
            ],
          ),
        )
      ]),
    ]));
  }
}
