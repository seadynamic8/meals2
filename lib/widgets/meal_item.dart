import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:meals2/models/meals.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Text(meal.title),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
