import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aplikacija2/models/place.dart';
import './bloc.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState([])) {
    on<AddToFavorites>((event, emit) {
      final currentFavorites = List<Place>.from(state.favorites);
      if (!currentFavorites.contains(event.place)) {
        currentFavorites.add(event.place);
        emit(FavoriteState(currentFavorites));
      }
    });

    on<RemoveFromFavorites>((event, emit) {
      final currentFavorites = List<Place>.from(state.favorites);
      currentFavorites.remove(event.place);
      emit(FavoriteState(currentFavorites));
    });
  }
}
