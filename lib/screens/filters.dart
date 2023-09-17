import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: false,
            onChanged: (isChecked) {},
            title: Text(
              'Gluten-free',
              style: themeContext.textTheme.titleLarge!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include gluten-free meals.',
              style: themeContext.textTheme.labelMedium!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            activeColor: themeContext.colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: false,
            onChanged: (isChecked) {},
            title: Text(
              'Lactose-free',
              style: themeContext.textTheme.titleLarge!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include lactose-free meals.',
              style: themeContext.textTheme.labelMedium!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            activeColor: themeContext.colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: false,
            onChanged: (isChecked) {},
            title: Text(
              'Vegetarian',
              style: themeContext.textTheme.titleLarge!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include vegetarian meals.',
              style: themeContext.textTheme.labelMedium!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            activeColor: themeContext.colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: false,
            onChanged: (isChecked) {},
            title: Text(
              'Vegan',
              style: themeContext.textTheme.titleLarge!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            subtitle: Text(
              'Only include vegan meals.',
              style: themeContext.textTheme.labelMedium!.copyWith(
                color: themeContext.colorScheme.onBackground,
              ),
            ),
            activeColor: themeContext.colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
