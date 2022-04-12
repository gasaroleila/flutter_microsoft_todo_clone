import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //upload todo
  Future<Null> addTodo(ToDo todo) async {
    try {
      print('there');
      _firestore.collection('todos').add(<String, dynamic>{
        'title': todo.title,
        'category': todo.category,
        'isCompleted': false,
        'isStarred': false
      });
    } catch (e) {
      print(e);
    }
  }
}
