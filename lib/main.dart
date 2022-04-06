import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/sidebar_model.dart';
import 'package:flutter_microsoft_todo_clone/screens/assigned.dart';
import 'package:flutter_microsoft_todo_clone/screens/important.dart';
import 'package:flutter_microsoft_todo_clone/screens/my_day.dart';
import 'package:flutter_microsoft_todo_clone/screens/planned.dart';
import 'package:flutter_microsoft_todo_clone/screens/assigned.dart';
import 'package:flutter_microsoft_todo_clone/screens/tasks.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SideBar(),
      child: MaterialApp(
        title: 'Flutter Microsoft ToDo clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
