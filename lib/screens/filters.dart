import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals2/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  void toggleFilter(WidgetRef ref, Filter filter, isChecked) {
    ref.read(filtersProvider.notifier).setFilter(filter, isChecked);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeContext = Theme.of(context);
    final filterValues = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: filterValues[Filter.glutenFree]!,
            onChanged: (isChecked) =>
                toggleFilter(ref, Filter.glutenFree, isChecked),
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
            value: filterValues[Filter.lactoseFree]!,
            onChanged: (isChecked) =>
                toggleFilter(ref, Filter.lactoseFree, isChecked),
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
            value: filterValues[Filter.vegetarian]!,
            onChanged: (isChecked) =>
                toggleFilter(ref, Filter.vegetarian, isChecked),
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
            value: filterValues[Filter.vegan]!,
            onChanged: (isChecked) =>
                toggleFilter(ref, Filter.vegan, isChecked),
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
