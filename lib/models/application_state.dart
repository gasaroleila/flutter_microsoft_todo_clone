import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ApplicationState extends ChangeNotifier {

  // Current content of ApplicationState elided ...

  // Add from here
  Future<DocumentReference> addMessageToGuestBook(String message) {
    // if (_loginState != ApplicationLoginState.loggedIn) {
    //   throw Exception('Must be logged in');
    // }

    return FirebaseFirestore.instance
        .collection('guestbook')
        .add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAut.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }
  // To here
}