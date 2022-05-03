import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_list_layout.dart';
import 'package:flutter_microsoft_todo_clone/services/todo_methods.dart';

class MyDayScreen extends StatelessWidget {

  final TodoMethods _todoMethods = TodoMethods();
   MyDayScreen({Key? key}) : super(key: key);
  

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
      child: const MainListLayout(
        data: todoData,
        title: 'My Day',
        isMyDay: true,
      ),
    ));
  }
}
