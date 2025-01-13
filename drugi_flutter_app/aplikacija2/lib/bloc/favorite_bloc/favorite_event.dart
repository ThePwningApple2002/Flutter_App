import 'package:aplikacija2/models/place.dart';

abstract class FavoriteEvent {}

class AddToFavorites extends FavoriteEvent{
  final Place place;
  AddToFavorites(this.place);
}

class RemoveFromFavorites extends FavoriteEvent{
  final Place place;
  RemoveFromFavorites(this.place);
}