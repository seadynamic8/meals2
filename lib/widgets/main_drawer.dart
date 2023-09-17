import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(Symbol screen) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  themeContext.colorScheme.primaryContainer,
                  themeContext.colorScheme.primaryContainer.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: themeContext.colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking Up!',
                  style: themeContext.textTheme.titleLarge!.copyWith(
                    color: themeContext.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
              color: themeContext.colorScheme.onBackground,
            ),
            title: Text(
              'Meals',
              style: themeContext.textTheme.titleSmall!.copyWith(
                color: themeContext.colorScheme.onBackground,
                fontSize: 24,
              ),
            ),
            onTap: () => onSelectScreen(#meals),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
              color: themeContext.colorScheme.onBackground,
            ),
            title: Text(
              'Filters',
              style: themeContext.textTheme.titleSmall!.copyWith(
                color: themeContext.colorScheme.onBackground,
                fontSize: 24,
              ),
            ),
            onTap: () => onSelectScreen(#filters),
          ),
        ],
      ),
    );
  }
}
