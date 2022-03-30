import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

class AppHeader extends StatelessWidget {
  final bool isMyDay;
  final String title;
  final String date;
  final Color color;
  final Icon icon;

  const AppHeader({
    Key? key,
    this.isMyDay = false,
    this.color = Colors.white,
    this.icon = const Icon(Icons.house_rounded, size: 30, color: Colors.white),
    required this.title,
    this.date = 'Monday, March 14',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isMyDay
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(title,
                        style: TextStyle(
                            color: color,
                            fontSize: 38,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(date,
                      style: TextStyle(
                          color: color,
                          fontSize: 19,
                          fontWeight: FontWeight.w400))
                ],
              )
            : Row(
                children: [
                  icon,
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(title,
                        style: TextStyle(
                            color: color,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
        isMyDay
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Container(
                      width: 38,
                      height: 39,
                      decoration: BoxDecoration(
                          color: Palette.mainBlack,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(.5),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(4)),
                      child: const Icon(Icons.lightbulb,
                          size: 25, color: Colors.white),
                    ),
                  ),
                  const Icon(Icons.more_horiz, size: 24, color: Colors.white)
                ],
              )
            : const Icon(Icons.more_horiz, size: 28, color: Colors.white)
      ],
    );
  }
}
