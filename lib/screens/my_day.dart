import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_layout.dart';
import 'package:flutter_microsoft_todo_clone/widgets/task_list.dart';

import '../widgets/app_header.dart';

class MyDay extends StatelessWidget {
  const MyDay({Key? key}) : super(key: key);

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
      child: MainLayout(
          child: Column(
        children: const [
          AppHeader(
            title: 'My Day',
            isMyDay: true,
          ),
          TaskList(todos: todoData)
        ],
      )),
    ));
  }
}
