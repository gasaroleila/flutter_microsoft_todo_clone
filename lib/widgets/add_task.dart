import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class AddTask extends StatelessWidget {
  final Color color;
  const AddTask({Key? key, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
        prefixIconColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        hintText: 'Add a task',
        hintStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        filled: true,
        fillColor: Palette.secBlack,
      ),
    );
  }
}
