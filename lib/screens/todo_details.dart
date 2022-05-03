import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_microsoft_todo_clone/widgets/add_task.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class TodoDetails extends StatelessWidget {
  // final ScreenArguments arguments;
  const TodoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(0, 0, 0, 1),
            child: Container(
                padding: EdgeInsets.fromLTRB(15, statusBar + 12, 14.5, 0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          size: 25,
                          color: Colors.white,
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Palette.secBlack,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(19.0, 0, 3, 0.0),
                                child: Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15.0),
                                          child: Container(
                                            width: 22,
                                            height: 22,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                border: Border.all(
                                                    width: 2.5,
                                                    color: Colors.white)),
                                          ),
                                        ),
                                        const Text(
                                          'Read a book',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.star_border,
                                          size: 26, color: Colors.white),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: AddTask(
                                  isStep: true,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Palette.secBlack,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(19.0, 5, 3, 5),
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Icon(Icons.sunny,
                                        size: 27,
                                        color:
                                            Color.fromARGB(255, 148, 202, 238)),
                                  ),
                                  Text(
                                    'Added to My Day',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                onPressed: () => {},
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Palette.secBlack,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(19.0, 0, 19, 0.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Container(
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    82, 255, 255, 255)))),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 17.0),
                                      child: Flex(
                                        direction: Axis.horizontal,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.0),
                                            child: Icon(
                                              Ionicons.md_clock,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Remind me',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Container(
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    82, 255, 255, 255)))),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 17.0),
                                      child: Flex(
                                        direction: Axis.horizontal,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.0),
                                            child: Icon(
                                              Ionicons.ios_calendar,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Add due date',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 17.0),
                                    child: Flex(
                                      direction: Axis.horizontal,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 15.0),
                                          child: Icon(
                                            Ionicons.ios_calendar,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Repeat',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Palette.secBlack,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(19.0, 5, 3, 5),
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: Icon(AntDesign.paperclip,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Add file',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Palette.secBlack,
                        ),
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(19.0, 5, 3, 5),
                            child: TextFormField(
                              minLines: 10,
                              // expands: true,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                      ),
                    )
                  ],
                ))));
  }
}
