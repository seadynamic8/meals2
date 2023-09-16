import 'package:flutter/material.dart';
import 'package:meals2/screens/categories.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final _activePage = 'Categories';

  @override
  Widget build(BuildContext context) {
    Widget content = const CategoriesScreen();

    return Scaffold(
      appBar: AppBar(
        title: Text(_activePage),
      ),
      body: content,
      bottomNavigationBar: BottomNavigationBar(
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
