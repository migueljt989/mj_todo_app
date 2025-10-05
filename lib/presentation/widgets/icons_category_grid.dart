import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mj_todo_app/domain/entities/selected_icon_data.dart';
import 'package:mj_todo_app/presentation/providers/providers.dart';

class IconsCategoryGrid extends ConsumerWidget {
  final List<IconData> categoryIcons = [
    Icons.list,
    Icons.house_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
    Icons.add_task_outlined,
    Icons.school_outlined,
    Icons.fax_outlined,
    Icons.pets_outlined,
    Icons.family_restroom_outlined,
    Icons.card_giftcard_outlined,
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
                final iconInformation = SelectedIconData(
                  codePoint: categoryIcon.codePoint,
                  fontFamily: categoryIcon.fontFamily,
                );
                ref
                    .read(selectedIconProvider.notifier)
                    .changeSelection(iconInformation);
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.surfaceContainerHighest,
                  border: BoxBorder.all(
                    width: selectedIcon?.codePoint == categoryIcon.codePoint
                        ? 3
                        : 0,
                    color: selectedIcon?.codePoint == categoryIcon.codePoint
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
