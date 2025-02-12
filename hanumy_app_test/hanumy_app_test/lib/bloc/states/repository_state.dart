import 'package:hanumy_app_test/models/api_response.dart';
import 'package:hanumy_app_test/models/material.dart';

abstract class RepositoryState {}

class RepositoryInitial extends RepositoryState {}

class RepositoryLoading extends RepositoryState {}

class CategoryAdded extends RepositoryState {
  final ApiResponse response;

  CategoryAdded(this.response);
}

class MaterialAdded extends RepositoryState {
  final ApiResponse response;

  MaterialAdded(this.response);
}

class RepositoryError extends RepositoryState {
  final String message;

  RepositoryError(this.message);
}
