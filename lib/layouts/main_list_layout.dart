import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';

class MainListLayout extends StatelessWidget {
  final List<ToDo> data;
  const MainListLayout({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Container(
        padding: EdgeInsets.fromLTRB(24, statusBar + 12, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Icon(Icons.menu, color: Colors.white, size: 32),
              ),
            ),
            Column(
              children: [
                const AppHeader(
                  title: 'My Day',
                  isMyDay: true,
                ),
                TaskList(
                  todos: data,
                  isMain: true,
                ),
                const AddTask()
              ],
            ),
          ],
        ));
  }
}
