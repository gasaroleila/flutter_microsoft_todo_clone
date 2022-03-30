import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_list_layout.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'assets/images/shifaaz-shamoon-okVXy9tG3KY-unsplash.jpg'),
            fit: BoxFit.cover),
      ),
      child: const MainListLayout(data: todoData, title: 'Tasks'),
    ));
  }
}
