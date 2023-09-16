import 'package:flutter/material.dart';

import 'package:meals2/data/dummy_data.dart';
import 'package:meals2/models/category.dart';
import 'package:meals2/screens/meals.dart';
import 'package:meals2/widgets/category_grid_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final meals = dummyMeals
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView(
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
      ),
    );
  }
}
