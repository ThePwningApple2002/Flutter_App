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
    on<LoadCategoriesEvent>((event, emit) async {
      print('LoadCategoriesEvent received'); // Debug print
      emit(const CategoriesLoadingState());

      try {
        print('Fetching categories'); // Debug print
        final categories = await repository.getCategories();
        print('Categories fetched: ${categories.length}'); // Debug print
        emit(CategoriesLoadedState(categories));
      } catch (e) {
        print('Error loading categories: $e'); // Debug print
        emit(CategoriesErrorState(const [], e.toString()));
      }
    });

    on<SelectCategoryEvent>((event, emit) {
      print(
          'SelectCategoryEvent received for: ${event.category.title}'); // Debug print
      selectedCategory = event.category;
      if (state is CategoriesLoadedState) {
        emit(CategoriesLoadedState(
          (state as CategoriesLoadedState).categories,
          selectedCategory: event.category,
        ));
      }
    });
  }
}
