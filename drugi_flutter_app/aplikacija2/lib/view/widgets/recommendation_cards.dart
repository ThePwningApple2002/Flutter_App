import 'package:aplikacija2/bloc/place_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aplikacija2/view/pages/pages.dart';

class RecommCards extends StatelessWidget {
  const RecommCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: BlocBuilder<PlaceBloc, PlaceState>(
        builder: (context, state) {
          if (state is PlacesLoadingState) {
          return Center(
            child: Text('Loading...'),
          );
        }
          
          if (state is PlacesErrorState) {
            return Center(
              child: Text("Error: ${state.error}"),
            );
          }

          if (state is PlacesLoadedState) {
            final places = state.places;
            if (places.isEmpty) {
              return const Center(
                child: Text("No places"),
              );
            }
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationPage(place: place),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 200,
                      height: 270,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 4,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              place.imageurl,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withOpacity(0.7),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  place.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return Center(child: Text('Unknown state'));
        },
      ),
    );
  }
}
