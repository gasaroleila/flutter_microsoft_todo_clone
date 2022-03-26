import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_plan_layout.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/layouts/page_with_header_layout.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class AssignedScreen extends StatelessWidget {
  const AssignedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(221, 41, 41, 41),
      body: PageWithHeaderLayout(
        data: todoData,
        color: Palette.assigned,
        headerIcon: Icon(
          Icons.supervisor_account_rounded,
          size: 33,
          color: Palette.assigned,
        ),
        child: const Center(
            child: const Column(
          children: const [
            Image(
                image: AssetImage(
                    'assets/images/shifaaz-shamoon-okVXy9tG3KY-unsplash.jpg'))
          ],
        )),
      ),
    );
  }
}
