import 'package:flutter_bloc/flutter_bloc.dart';
import './bloc.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterCurrentState(
    selectedIndex: 0,
    activeFilter: "Location",
    filterTags: ["Location", "Hotel", "Restaurant", "Adventure", "Spa", "Pool"],
  )) {
    on<ApplyFilterEvent>((event, emit) {
      if (state is FilterCurrentState) {
        emit((state as FilterCurrentState).copyWith(
          selectedIndex: event.index,
          activeFilter: event.filter,
        ));
      }
    });
  }
}
