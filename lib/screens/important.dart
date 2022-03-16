import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_plan_layout.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';

class ImportantScreen extends StatelessWidget {
  const ImportantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: MainPlanLayout(data: todoData),
    );
  }
}
