import 'package:flutter/material.dart';

class IconsCategoryGrid extends StatelessWidget {
  final List<IconData> categoryIcons = [
    Icons.house_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
    Icons.house_outlined,
    Icons.shopping_bag_outlined,
    Icons.favorite_border_outlined,
  ];
  IconsCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
        children: [
          ...categoryIcons.map((categoryIcon) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [Icon(categoryIcon, size: 40)]),
              ),
            );
          }),
        ],
      ),
    );
  }
}
