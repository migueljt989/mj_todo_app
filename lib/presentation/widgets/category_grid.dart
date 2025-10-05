import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mj_todo_app/presentation/providers/providers.dart';

class CategoryGrid extends ConsumerWidget {
  CategoryGrid({super.key});

  final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final categories = ref.watch(categoriesProvider);
    return GridView.builder(
      itemCount: categories.length,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(categories[index].icon, size: 100),
                SizedBox(height: 10),
                Text(categories[index].name, style: textTheme.titleLarge),
              ],
            ),
          ),
        );
      },
    );
  }
}
