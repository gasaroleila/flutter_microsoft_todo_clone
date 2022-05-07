import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/sidebar_model.dart';
import 'package:flutter_microsoft_todo_clone/screens/assigned.dart';
import 'package:flutter_microsoft_todo_clone/screens/important.dart';
import 'package:flutter_microsoft_todo_clone/screens/login_screen.dart';
import 'package:flutter_microsoft_todo_clone/screens/my_day.dart';
import 'package:flutter_microsoft_todo_clone/screens/planned.dart';
import 'package:flutter_microsoft_todo_clone/screens/assigned.dart';
import 'package:flutter_microsoft_todo_clone/screens/tasks.dart';
import 'package:flutter_microsoft_todo_clone/screens/todo_details.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        initialRoute: '/signIn',
        routes: {
          '/signIn': (context) => LoginScreen(),
          '/': (context) =>  MyDayScreen(),
          '/important': (context) => const ImportantScreen(),
          '/planned': (context) => const PlannedScreen(),
          '/assigned': (context) => const AssignedScreen(),
          '/tasks': (context) => const TasksScreen(),
          // '/todo-details': (context) =>  TodoDetails()
        },
      ),
    );
  }
}
