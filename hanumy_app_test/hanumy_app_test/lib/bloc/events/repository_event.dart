import 'package:hanumy_app_test/models/category.dart';
import 'package:hanumy_app_test/models/material.dart';

abstract class RepositoryEvent {}

class AddCategoryEvent extends RepositoryEvent {
  final Kategorija category;

  AddCategoryEvent(this.category);
}

class AddMaterialEvent extends RepositoryEvent {
  final Materijal material;

  AddMaterialEvent(this.material);
}
