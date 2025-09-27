import 'package:flutter/material.dart';

class IconsCategoryGrid extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      height: 130,
      child: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.5,
        children: [
          ...categoryIcons.map((categoryIcon) {
            return Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors.surfaceContainerHighest,
                border: BoxBorder.all(width: 2, color: colors.onSurfaceVariant)
              ),
              child: Icon(categoryIcon, size: 40),
            );
          }),
        ],
      ),
    );
  }
}
