import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/layouts/main_plan_layout.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/layouts/page_with_header_layout.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssignedScreen extends StatelessWidget {
  const AssignedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 41, 41, 41),
      body: PageWithHeaderLayout(
        data: todoData,
        color: Palette.assigned,
        headerIcon: const Icon(
          Icons.supervisor_account_rounded,
          size: 33,
          color: Palette.assigned,
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
                width: 200,
                height: 200,
                child: SvgPicture.asset(
                  'assets/images/undraw_to_do_list_re_9nt7.svg',
                  fit: BoxFit.contain,
                  // color: Palette.assigned,
                )),
            const Text(
              'Tasks assigned to you show up here',
              style: TextStyle(
                  color: Palette.assigned,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            )
          ],
        )),
      ),
    );
  }
}
