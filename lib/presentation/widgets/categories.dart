import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
  );

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return GridView.builder(
      itemCount: 4,
      gridDelegate: gridDelegate,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: colorTheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.library_books_outlined, size: 80),
                SizedBox(height: 10),
                Text('Category Name', style: textTheme.titleLarge),
              ],
            ),
          ),
        );
      },
    );
  }
}
