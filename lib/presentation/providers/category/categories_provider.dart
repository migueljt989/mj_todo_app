import 'package:flutter/material.dart';
import 'package:mj_todo_app/domain/entities/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@Riverpod(keepAlive: true)
class Categories extends _$Categories {

  @override
  List<Category> build() {
    final List<Category> defaultCategories = [
      Category(
        name: 'ToDo',
        icon: Icons.library_books_outlined,
        tasks: [],
      ),
      Category(name: 'Home', icon: Icons.home_outlined, tasks: []),
    ];
    return defaultCategories;
  }
}
