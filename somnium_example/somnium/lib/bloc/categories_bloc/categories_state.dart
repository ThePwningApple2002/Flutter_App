import 'package:somnium/models/models.dart';

abstract class CategoryState {
  final List<Category> categories;
  const CategoryState(this.categories);
}

class CategoriesLoadingState extends CategoryState {
  const CategoriesLoadingState() : super(const []);
}

class CategoriesLoadedState extends CategoryState {
  final Category? selectedCategory;
  final int? selectedIndex;

  const CategoriesLoadedState(
    super.categories, {
    this.selectedCategory,
    this.selectedIndex,
  });
}

class CategoriesErrorState extends CategoryState {
  final String error;
  const CategoriesErrorState(super.categories, this.error);
}
