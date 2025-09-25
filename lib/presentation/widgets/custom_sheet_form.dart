import 'package:flutter/material.dart';

class CustomSheetForm extends StatelessWidget {
  const CustomSheetForm({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    return FloatingActionButton.extended(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Align(
                      alignment :AlignmentGeometry.centerLeft, 
                      child: Text('Add New Category', 
                        style: TextStyle(
                          fontSize: textTheme.headlineSmall!.fontSize))),
                    TextFormField()
                  ],
                ),
              ),
            );
          },
        );
      },
      label: const Text('Category'),
      icon: Icon(Icons.add_card_outlined),
    );
  }
}
