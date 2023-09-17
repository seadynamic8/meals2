import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals2/providers/favorites_provider.dart';

import 'package:meals2/screens/categories.dart';
import 'package:meals2/screens/meals.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  var _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoritesProvider);
    final tabs = [
      (title: 'Categories', content: const CategoriesScreen()),
      (title: 'Favorites', content: MealsScreen(meals: favoriteMeals))
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[_selectedPageIndex].title),
      ),
      body: tabs[_selectedPageIndex].content,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
