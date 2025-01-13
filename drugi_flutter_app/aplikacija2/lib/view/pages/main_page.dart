import 'package:aplikacija2/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import './pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(  
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                children: [
                  Textbox(text: "Explore", size: 15, color: Colors.black),
                  Row( 
                    children: [
                      Ikonica(filename: "assets/location-1.png", size: 20, color: Colors.blue),
                      Textbox(text: "Aspen, USA", size: 10, color: Colors.black),
                      Ikonica(filename: "assets/Arrow - Down 2.png", size:20, color: Colors.blue),
                    ],
                  ),
                ],
              ),
              Textbox(text: "Aspen", size: 30, color: Colors.black, fontWeight: FontWeight.w500,),
              SizedBox(height: 20),
              SearchField(),
              Locationtags(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textbox(text: "Popular", size: 20, color: Colors.black, fontWeight: FontWeight.w600,),
                  TextButton(
                    onPressed: (){},
                    child: Textbox(text: 'See All', size: 10, color: Colors.blue,),
                  )
                ],
              ),
              SizedBox(
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: PlacesGrid(),
              ),
              SizedBox(height: 20),
              Textbox(text: "Recommended", size: 20, color: Colors.black, fontWeight: FontWeight.w600,),
              SizedBox(height: 20),
              SizedBox(
                  height: 90,
                  child: RecommCards(),
                ),
              SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavoritesPage(),
                      ),
                    );
                  },
                  
                  child: Text("Favorites" )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
