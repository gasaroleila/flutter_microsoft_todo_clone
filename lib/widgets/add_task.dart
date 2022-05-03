import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/services/todo_methods.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class AddTask extends StatelessWidget {
  final bool isStep;
  final TodoMethods _todoMethods = TodoMethods();

  final Color color;
  // final TextEditingController controller;
  AddTask({Key? key, this.isStep = false, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        ToDoStep newStep = ToDoStep(
          title: value,
          isCompleted: false,
        );
        ToDo newTodo = ToDo(
          title: value,
          category: 'Tasks',
        );
        !isStep
            ? _todoMethods.addTodo(newTodo)
            : _todoMethods.addTodoStep(newStep);
      },
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 25,
          ),
          prefixIconColor: Colors.white,
          border: !isStep
              ? OutlineInputBorder(borderRadius: BorderRadius.circular(6))
              : InputBorder.none,
          hintText: !isStep ? 'Add a task' : 'Add Step',
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          filled: !isStep ? true : false,
          fillColor: !isStep ? Palette.mainBlack : null),
    );
  }
}
