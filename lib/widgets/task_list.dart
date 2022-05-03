import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/todo_model.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';

class TaskList extends StatelessWidget {
  final List<ToDo> todos;
  final bool isMain;
  final bool isPlanned;
  final bool isSuggestions;
  TaskList(
      {Key? key,
      required this.todos,
      this.isMain = false,
      this.isSuggestions = false,
      this.isPlanned = false})
      : super(key: key);

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:
            !isSuggestions ? MediaQuery.of(context).size.width * 1.30 : null,
        child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: _firestore
                .collection('users')
                .doc(_auth.currentUser!.uid)
                .collection('todos')
                .snapshots(),
            builder: (_, snapshot) {
              if (snapshot.hasError) return Text('Error = ${snapshot.error}');

              if (snapshot.hasData) {
                final docs = snapshot.data!.docs;
                return ListView.builder(
                  shrinkWrap: isSuggestions,
                  scrollDirection: Axis.vertical,
                  itemCount: docs.length,
                  itemBuilder: (_, i) {
                    final todo = docs[i].data();
                    return Expanded(
                        child: Task(
                      isSuggestions: isSuggestions,
                      isMain: isMain,
                      isPlanned: isPlanned,
                      todo: todo,
                    ));
                  },
                );
              }
              ;
              return Center(child: CircularProgressIndicator());
            }));
  }
}
