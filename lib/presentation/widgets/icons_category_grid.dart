import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mj_todo_app/presentation/providers/providers.dart';

class IconsCategoryGrid extends ConsumerWidget {
  final List<IconData> categoryIcons = [
    Icons.house_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
    Icons.house_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
    Icons.favorite_border_outlined,
    Icons.house_outlined,
  ];
  IconsCategoryGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final selectedIcon = ref.watch(selectedIconProvider);
    return SizedBox(
      height: 130,
      child: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.5,
        children: [
          ...categoryIcons.map((categoryIcon) {
            return GestureDetector(
              onTap: () {
                ref
                    .read(selectedIconProvider.notifier)
                    .changeSelection(
                      categoryIcon.codePoint,
                      categoryIcon.fontFamily!,
                    );
                print(
                  'codePoint: ${categoryIcon.codePoint}, fontFamily: ${categoryIcon.fontFamily}',
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.surfaceContainerHighest,
                  border: BoxBorder.all(
                    width: selectedIcon?.values.first == categoryIcon.codePoint
                        ? 2
                        : 0,
                    color: selectedIcon?.values.first == categoryIcon.codePoint
                        ? colors.onSurfaceVariant
                        : colors.surfaceContainerHighest,
                  ),
                ),
                child: Icon(categoryIcon, size: 40),
              ),
            );
          }),
        ],
      ),
    );
  }
}
