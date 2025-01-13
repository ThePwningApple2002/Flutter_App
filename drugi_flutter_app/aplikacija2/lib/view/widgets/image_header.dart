import 'package:aplikacija2/bloc/favorite_bloc/bloc.dart';
import 'package:aplikacija2/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageHeader extends StatelessWidget {

  final Place place; // Add this parameter

  const ImageHeader({
    super.key, 
 
    required this.place, // Add this parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 400,
              child: Image.network(
                place.imageurl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: ImageIcon(
                  AssetImage("assets/Vector.png"),
                  color: Color.fromARGB(255, 184, 184, 184),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
          Positioned(
            bottom: -25, 
            right: 20,
            child: BlocBuilder<FavoriteBloc, FavoriteState>(
              builder: (context, state) {
                bool isFavorite = state.favorites.contains(place);
                return Container(
                  width: 40,  
                  height: 40, 
                  padding: EdgeInsets.all(4), 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Transform.scale(
                    scale: 2,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      icon: ImageIcon(
                        AssetImage("assets/Heart.png"),
                        size: 20,
                        color: isFavorite ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        if (isFavorite) {
                          context.read<FavoriteBloc>().add(RemoveFromFavorites(place));
                        } else {
                          context.read<FavoriteBloc>().add(AddToFavorites(place));
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

