import 'package:flutter/material.dart';
import 'package:mj_todo_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
            Expanded(child: Categories()),
          ],
        ),
      ),
      floatingActionButton: CustomSheetForm(),
    );
  }
}
