import 'package:aplikacija2/models/place.dart';

abstract class PlaceEvent {}

class LoadPlacesEvent extends PlaceEvent{

}

class AddPlaceEvent extends PlaceEvent {
  final Place place;
  AddPlaceEvent(this.place);
}

class RemovePlaceEvent extends PlaceEvent {
  final Place place;
  RemovePlaceEvent(this.place);
}
