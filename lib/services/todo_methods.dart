import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';

class TodoMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> get todos => _firestore
      .collection('users')
      .doc(_auth.currentUser!.uid)
      .collection('todos')
      .snapshots();

  dynamic retrieveTodos() async {
    try {
      return await todos.toList();
    } catch (e) {
      print(e);
    }
  }

  void addTodo(ToDo todo) async {
    try {
      print("there");
      await _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .collection('todos')
          .add({
        'title': todo.title,
        'category': todo.category,
        'isStarred': todo.isStarred,
        'isCompleted': todo.isCompleted,
        'createdAt': DateTime.now(),
      });
    } catch (e) {
      print(e);
    }
  }

  void addTodoStep(ToDoStep step) async {
    try {
      print("there");
      await _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .collection('todos')
          .doc()
          .collection('steps')
          .add({
        'title': step.title,
        'isCompleted': step.isCompleted,
        'createdAt': DateTime.now(),
      });
    } catch (e) {
      print(e);
    }
  }

  void updateTodo(ToDo todo) async {
    try {
      await _firestore
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .collection('todos')
          .doc(todo.id)
          .update({
        'title': todo.title,
        'category': todo.category,
        'isStarred': todo.isStarred,
        'isCompleted': todo.isCompleted,
      });
    } catch (e) {
      print(e);
    }
  }
}
