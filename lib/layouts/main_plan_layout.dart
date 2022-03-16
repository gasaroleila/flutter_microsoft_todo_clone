import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';

class MainPlanLayout extends StatelessWidget {
  final List<ToDo> data;
  const MainPlanLayout({Key? key, required this.data}) : super(key: key);

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
                  title: 'Important',
                  color: Color.fromRGBO(244, 143, 177, 1),
                  icon: Icon(
                    Icons.star_border_outlined,
                    size: 33,
                    color: Color.fromRGBO(244, 143, 177, 1),
                  ),
                ),
                TaskList(todos: data),
                const AddTask()
              ],
            ),
          ],
        ));
  }
}
