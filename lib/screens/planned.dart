import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_plan_layout.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class PlannedScreen extends StatelessWidget {
  const PlannedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(221, 41, 41, 41),
      body: MainPlanLayout(
          data: todoData,
          isPlanned: true,
          color: Palette.planned,
          headerIcon: Icon(
            Icons.add_chart_rounded,
            size: 33,
            color: Palette.planned,
          )),
    );
  }
}
