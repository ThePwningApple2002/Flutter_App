import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanumy_app_test/bloc/events/repository_event.dart';
import 'package:hanumy_app_test/bloc/states/repository_state.dart';
import 'package:hanumy_app_test/repositories/repository.dart';

class RepositoryBloc extends Bloc<RepositoryEvent, RepositoryState> {
  final Repository repository;

  RepositoryBloc({required this.repository}) : super(RepositoryInitial()) {
    on<AddCategoryEvent>(onAddCategory);
    on<AddMaterialEvent>(onAddMaterial);
  }

  Future<void> onAddCategory(
    AddCategoryEvent event,
    Emitter<RepositoryState> emit,
  ) async {
    try {
      emit(RepositoryLoading());
      print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAaa");
      final response = await repository.postCategory(event.category);
      print("DDDDDDDDDDDDDDDDDDDDDDDDDDD");
      // emit(CategoryAdded());
    } catch (e) {
      emit(RepositoryError(e.toString()));
      print("puklo ali u blok" + e.toString());
    }
  }

  Future<void> onAddMaterial(
    AddMaterialEvent event,
    Emitter<RepositoryState> emit,
  ) async {
    try {
      emit(RepositoryLoading());
      final response = await repository.postMaterial(event.material);
      emit(MaterialAdded(response));
    } catch (e) {
      emit(RepositoryError(e.toString()));
      print("puklo ali u blok");
    }
  }
}
