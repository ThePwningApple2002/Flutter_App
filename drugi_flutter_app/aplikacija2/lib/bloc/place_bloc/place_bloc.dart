import 'package:aplikacija2/repositories/places.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aplikacija2/models/place.dart';
import 'bloc.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  final Places mesta;
  PlaceBloc(this.mesta) : super(PlacesLoadingState()) {
    on<AddPlaceEvent>((event, emit) {
      try {
        final currentPlaces = List<Place>.from((state as PlacesLoadedState).places);
        currentPlaces.add(event.place);
        emit(PlacesLoadedState(currentPlaces));
      } catch (e) {
        emit(PlacesErrorState([], e.toString()));
      }
    });

    on<LoadPlacesEvent>((event, emit) async {
      emit(PlacesLoadingState());
      try {
        final loadedPlaces = await mesta.getPlaces();
        print("Loaded places: $Places");
        emit(PlacesLoadedState(loadedPlaces));
      } catch (e) {
        emit(PlacesErrorState([], e.toString()));
      }
    });

    on<RemovePlaceEvent>((event, emit) {
      try {
        final currentPlaces = List<Place>.from((state as PlacesLoadedState).places);
        currentPlaces.remove(event.place);
        emit(PlacesLoadedState(currentPlaces));
      } catch (e) {
        emit(PlacesErrorState([], e.toString()));
      }
    });
  }
}
