import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/services/todo_methods.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class AddTask extends StatelessWidget {
  final TodoMethods _todoMethods = TodoMethods();

  final Color color;
  // final TextEditingController controller;
  AddTask({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        ToDo newTodo = ToDo(
          title: value,
          category: 'Tasks',
        );
        _todoMethods.addTodo(newTodo);
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 25,
          ),
          prefixIconColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          hintText: 'Add a task',
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          filled: true,
          fillColor: Palette.mainBlack),
    );
  }
}
