import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/screens/todo_details.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:page_transition/page_transition.dart';

class Task extends StatelessWidget {
  final bool isMain;
  final bool isPlanned;
  final bool isSuggestions;
  final todo;
  const Task(
      {Key? key,
      this.isMain = false,
      this.isSuggestions = false,
      this.isPlanned = false,
      required this.todo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(todo);
        Navigator.push(
          context,
          PageTransition(
              child: TodoDetails(id: todo['id']),
              type: PageTransitionType.rightToLeft),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 4),
        decoration: !isSuggestions
            ? BoxDecoration(
                color: isMain ? Palette.mainBlack : Palette.secBlack,
                borderRadius: BorderRadius.circular(6))
            : const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Palette.secBlack))),
        height: 65,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 2.5, color: Colors.white)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text(
                          todo['title'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17.5),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            todo['category'],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15.5),
                          ),
                          isPlanned
                              ? Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 6.0),
                                      child: Icon(Icons.calendar_month,
                                          size: 15, color: Palette.planned),
                                    ),
                                    const Text(
                                      'Today',
                                      style: TextStyle(
                                          color: Palette.planned,
                                          fontSize: 15.5,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                )
                              : const SizedBox.shrink()
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Icon(!isSuggestions ? Icons.star_border : Icons.add,
                  size: 25,
                  color: !isSuggestions ? Colors.white : Palette.mainBlue),
            ],
          ),
        ),
      ),
    );
  }
}
