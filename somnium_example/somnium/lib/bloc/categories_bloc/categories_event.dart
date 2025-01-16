import 'package:somnium/models/models.dart';

abstract class CategoryEvent {}

class LoadCategoriesEvent extends CategoryEvent {}

class SelectCategoryEvent extends CategoryEvent {
  final Category category;

  SelectCategoryEvent(this.category);
}
