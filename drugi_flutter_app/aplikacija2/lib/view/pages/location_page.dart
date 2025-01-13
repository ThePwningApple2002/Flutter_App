import 'package:aplikacija2/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:aplikacija2/models/place.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aplikacija2/bloc/place_bloc/bloc.dart';

class LocationPage extends StatelessWidget {
  final Place place;

  const LocationPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceBloc, PlaceState>(
      builder: (context, state) {
        if (state is PlacesErrorState) {
          return Center(child: Text('Error: ${state.error}'));
        }

        if (state is PlacesLoadedState) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ImageHeader( place: place,),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LocationTitleSel(
                                      name: place.name,
                                      grade: place.grade,
                                      reviews: place.reviews),
                                  SizedBox(height: 16),
                                  Textbox(
                                    text: place.description,
                                    size: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  SizedBox(height: 24),
                                  Facilities(facilities: place.facilities),
                                  // Add padding at the bottom to ensure content isn't hidden behind the BottomBar
                                  SizedBox(height: 100),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Modified BottomBar
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomBar(price: place.price),
                  ),
                ],
              ),
            ),
          );
        }
        return Center(child: Text('Unknown state'));
      },
    );
  }
}
