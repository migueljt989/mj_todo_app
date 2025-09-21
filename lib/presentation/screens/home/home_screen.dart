import 'package:flutter/material.dart';
import 'package:mj_todo_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        centerTitle: true,
      ),
      body:Expanded(child: Categories()),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
         label: Text('Category'),
         icon: Icon(Icons.add_card_outlined),
         ),
    );
  }
}