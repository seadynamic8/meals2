import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals2/providers/favorites_provider.dart';
import 'package:meals2/providers/filters_provider.dart';

import 'package:meals2/screens/categories.dart';
import 'package:meals2/screens/filters.dart';
import 'package:meals2/screens/meals.dart';
import 'package:meals2/widgets/main_drawer.dart';

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

  void _setScreen(Symbol screen) {
    Navigator.pop(context);

    // #meals is current screen, so no action

    if (screen == #filters) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const FiltersScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoritesProvider);
    final filteredMeals = ref.watch(filteredMealsProvider);
    final tabs = [
      (
        title: 'Categories',
        content: CategoriesScreen(availableMeals: filteredMeals),
      ),
      (
        title: 'Favorites',
        content: MealsScreen(meals: favoriteMeals),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[_selectedPageIndex].title),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
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
