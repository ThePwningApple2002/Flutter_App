import 'package:aplikacija2/models/place.dart';

abstract class PlaceState {
  final List<Place> places;
  const PlaceState(this.places);
}

class PlacesLoadingState extends PlaceState {
  const PlacesLoadingState() : super(const []); 
}

class PlacesLoadedState extends PlaceState {
  const PlacesLoadedState(List<Place> places) : super(places);
}

class PlacesErrorState extends PlaceState {
  final String error;
  const PlacesErrorState(List<Place> places, this.error) : super(places);
}
