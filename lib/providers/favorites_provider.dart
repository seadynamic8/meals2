import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals2/models/meals.dart';

class FavoritesNotifier extends StateNotifier<List<Meal>> {
  FavoritesNotifier() : super([]);

  bool toggleFavoriteStatus(Meal meal) {
    if (state.contains(meal)) {
      final existingFavoritesCopy = [...state];
      existingFavoritesCopy.remove(meal);
      state = existingFavoritesCopy;

      return false;
    } else {
      state = [...state, meal];

      return true;
    }
  }
}

final favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, List<Meal>>((ref) {
  return FavoritesNotifier();
});
