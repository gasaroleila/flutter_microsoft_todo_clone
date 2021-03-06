import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_plan_layout.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class ImportantScreen extends StatelessWidget {
  const ImportantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(221, 41, 41, 41),
      body: MainPlanLayout(
          data: todoData,
          color: Palette.imp,
          headerIcon: Icon(
            Icons.star_border_outlined,
            size: 33,
            color: Palette.imp,
          )),
    );
  }
}
