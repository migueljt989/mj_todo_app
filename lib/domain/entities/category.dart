import 'package:flutter/widgets.dart';
import 'package:mj_todo_app/domain/entities/task.dart';

class Category {
  final String name;
  final IconData icon;
  final List<Task> tasks;

  Category({
    required this.name, 
    required this.icon,
    required this.tasks,
    }); 
}
