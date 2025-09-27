import 'package:flutter/material.dart';
import 'package:mj_todo_app/presentation/widgets/icons_category_grid.dart';
import 'package:mj_todo_app/presentation/widgets/widgets.dart';

class CustomSheetForm extends StatefulWidget {
  const CustomSheetForm({super.key});

  @override
  State<CustomSheetForm> createState() => _CustomSheetFormState();
}

class _CustomSheetFormState extends State<CustomSheetForm> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                'Add New Category',
                style: TextStyle(fontSize: textTheme.headlineSmall!.fontSize),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(hint: 'Category name'),
            const SizedBox(height: 20),
            IconsCategoryGrid(),
          ],
        ),
      ),
    );
  }
}
