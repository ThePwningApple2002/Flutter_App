import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';
import 'package:somnium/repositories/music_rep.dart';
import 'package:somnium/models/models.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final MusicRepository repository;
  Category? selectedCategory;
  int? selectedCategoryIndex;

  CategoryBloc({required this.repository})
      : super(const CategoriesLoadingState()) {
    on<LoadCategoriesEvent>(onLoadCategories);
    on<SelectCategoryEvent>(onSelectCategory);
  }

  Future<void> onLoadCategories(
    LoadCategoriesEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoriesLoadingState());
    try {
      final categories = await repository.getCategories();
      emit(CategoriesLoadedState(categories));
    } catch (e) {
      emit(CategoriesErrorState(const [], e.toString()));
    }
  }

  void onSelectCategory(
    SelectCategoryEvent event,
    Emitter<CategoryState> emit,
  ) {
    selectedCategory = event.category;
    if (state is CategoriesLoadedState) {
      emit(CategoriesLoadedState((state as CategoriesLoadedState).categories,
          selectedCategory: event.category));
    }
  }
}
