import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';

class MainPlanLayout extends StatelessWidget {
  final List<ToDo> data;
  final bool isPlanned;
  final Color color;
  final Icon headerIcon;
  const MainPlanLayout(
      {Key? key,
      required this.data,
      this.isPlanned = false,
      required this.color,
      required this.headerIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Container(
        padding: EdgeInsets.fromLTRB(24, statusBar + 12, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Icon(Icons.menu, color: Colors.white, size: 32),
              ),
            ),
            Column(
              children: [
                AppHeader(
                  title: isPlanned ? 'Planned' : 'Important',
                  color: color,
                  icon: headerIcon,
                ),
                isPlanned
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 110,
                          height: 40,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Palette.secBlack),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Row(children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )
                            ]),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                TaskList(
                  todos: data,
                  isPlanned: isPlanned,
                ),
                const AddTask()
              ],
            ),
          ],
        ));
  }
}
