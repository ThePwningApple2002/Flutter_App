import 'package:aplikacija2/view/widgets/widgets.dart';
import 'package:aplikacija2/view/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aplikacija2/bloc/place_bloc/bloc.dart';
import 'package:aplikacija2/bloc/filter_bloc/bloc.dart';

class PlacesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, filterState) {
        return BlocBuilder<PlaceBloc, PlaceState>(
          builder: (context, placeState) {
            if (placeState is PlacesLoadingState) {
              return Center(
                child: Text('Loading...'),
              );
            }

            if (placeState is PlacesErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: ${placeState.error}'),
                    TextButton(
                      onPressed: () {
                        context.read<PlaceBloc>().add(LoadPlacesEvent());
                      },
                      child: Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            if (placeState is PlacesLoadedState) {
              final allPlaces = placeState.places;
              final filteredPlaces = filterState.activeFilter == "Location"
                  ? allPlaces
                  : allPlaces.where((place) => 
                      place.facilities.contains(
                        filterState.activeFilter
                      )).toList();

              if (filteredPlaces.isEmpty) {
                return Center(child: Text('No places available for ${filterState.activeFilter}'));
              }

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filteredPlaces.length,
                itemBuilder: (context, index) {
                  final place = filteredPlaces[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationPage(place: place),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 200,
                          height: 270,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              place.imageurl,
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Container(
                                  color: Colors.grey[300],
                                  child: Center(
                                    child: Text('Loading image...'),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 87, 87, 87),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Textbox(
                                  text: place.name,
                                  size: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10, bottom: 12),
                                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 87, 87, 87),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        children: [
                                          ImageIcon(
                                            AssetImage("assets/star.png"),
                                            size: 14,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(width: 4),
                                          Textbox(
                                            text: place.grade.toString(),
                                            size: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 10, bottom: 12),
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      padding: EdgeInsets.all(0),
                                      child: Center(
                                        child: Transform.scale(
                                          scale: 1.5,
                                          child: Ikonica(
                                            filename: "assets/Heart.png",
                                            size: 15,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }

            return Center(child: Text('Unexpected state'));
          },
        );
      },
    );
  }
}
