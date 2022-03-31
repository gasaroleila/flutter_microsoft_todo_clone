import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_microsoft_todo_clone/widgets/app_sidebar.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';

class MainListLayout extends StatelessWidget {
  final List<ToDo> data;
  final String title;
  final bool isMyDay;
  final Icon headerIcon;
  const MainListLayout(
      {Key? key,
      required this.data,
      required this.title,
      this.isMyDay = false,
      this.headerIcon =
          const Icon(Icons.lightbulb, size: 25, color: Colors.white)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(24, statusBar + 12, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: IconButton(
                      alignment: Alignment.topLeft,
                      icon:
                          const Icon(Icons.menu, color: Colors.white, size: 32),
                      onPressed: () => {},
                    ),
                  ),
                ),
                Column(
                  children: [
                    AppHeader(
                      title: title,
                      isMyDay: isMyDay,
                    ),
                    TaskList(
                      todos: data,
                      isMain: true,
                    ),
                    const AddTask()
                  ],
                ),
              ],
            )),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.85,
          color: Colors.black,
          child: const AppSideBar(),
        )
      ],
    );
  }
}
