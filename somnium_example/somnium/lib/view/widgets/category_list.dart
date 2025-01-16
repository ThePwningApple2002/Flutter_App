import 'package:flutter/material.dart';
import 'package:somnium/models/models.dart';
import 'package:somnium/view/widgets/widgets.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;

  const CategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 36.0,
          children: categories.map((category) {
            return CategoryItem(category: category);
          }).toList(),
        ),
      ),
    );
  }
}
