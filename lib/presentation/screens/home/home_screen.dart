import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mj_todo_app/presentation/widgets/widgets.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Tasks',
          style: TextStyle(fontSize: textTheme.headlineMedium!.fontSize),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(fontSize: textTheme.headlineSmall!.fontSize),
              ),
            ),
            SizedBox(height: 30),
            Expanded(child: CategoryGrid()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return CustomSheetForm();
            },
          );
        },
        label: const Text('Category'),
        icon: Icon(Icons.add_card_outlined, color: colors.primary),
        backgroundColor: colors.primaryContainer,
      ),
    );
  }
}
