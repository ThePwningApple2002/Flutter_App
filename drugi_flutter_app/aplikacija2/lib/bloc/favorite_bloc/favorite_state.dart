import 'package:aplikacija2/models/place.dart';

class FavoriteState {
  final List<Place> favorites;
  FavoriteState(this.favorites);
}


class FavoritesLoadedState extends FavoriteState {
  FavoritesLoadedState(List<Place> favorites) : super(favorites);
}

class FavoritesErrorState extends FavoriteState {
  final String error;
  FavoritesErrorState(List<Place> favorites, this.error) : super(favorites);
}
