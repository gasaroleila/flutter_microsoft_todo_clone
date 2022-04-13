import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class TodoDetails extends StatelessWidget {
  const TodoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 0, 0, 1),
        child: Container(
            child: Column(
          children: [
            IconButton(
              icon: const Icon(
                Icons.close,
                size: 25,
                color: Colors.white,
              ),
              onPressed: () => {},
            ),
            Container(
              color: Palette.secBlack,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Row(
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2.5, color: Colors.white)),
                  ),
                  Text(
                    'Vue Js',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        )));
  }
}
