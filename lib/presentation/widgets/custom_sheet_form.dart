import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mj_todo_app/presentation/providers/sheet_form/selected_icon_provider.dart';
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
            const SizedBox(height: 30),
            IconsCategoryGrid(),
            const SizedBox(height: 30),
            _CategoryPreview(),
          ],
        ),
      ),
    );
  }
}

class _CategoryPreview extends ConsumerWidget {
  const _CategoryPreview();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final selectedIcon = ref.watch(selectedIconProvider);
    return Column(
      children: [
        SizedBox(
          width: 400,
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Text('Preview', style: TextStyle(fontSize: 20)),
          ),
        ),
        Container(
          height: 150,
          width: 400,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.surfaceContainerHigh,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.secondaryContainer,
                ),
                child: Icon(
                  selectedIcon == null
                      ? Icons.list
                      : IconData(
                          selectedIcon.values.first,
                          fontFamily: selectedIcon.keys.first,
                        ),
                  size: 50,
                ),
              ),
              const SizedBox(height: 10),
              Text('Category name', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ],
    );
  }
}
