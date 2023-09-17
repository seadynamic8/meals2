import 'package:flutter/material.dart';

import 'package:meals2/data/dummy_data.dart';
import 'package:meals2/models/category.dart';
import 'package:meals2/models/meals.dart';
import 'package:meals2/screens/meals.dart';
import 'package:meals2/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.availableMeals});

  final List<Meal> availableMeals;

  void _selectCategory(BuildContext context, Category category) {
    final meals = availableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) {
        return MealsScreen(title: category.title, meals: meals);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            selectCategory: () => _selectCategory(context, category),
          )
      ],
    );
  }
}
