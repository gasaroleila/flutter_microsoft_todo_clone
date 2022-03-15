import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/todo_model.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class TaskList extends StatelessWidget {
  final List<ToDo> todos;
  const TaskList({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 1,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: todos.length,
        itemBuilder: (BuildContext context, index) {
          final ToDo todo = todos[index];
          return Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                  color: Palette.mainBlack,
                  borderRadius: BorderRadius.circular(6)),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                child: Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              todo.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              todo.category,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(Icons.star, size: 25, color: Colors.white),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
