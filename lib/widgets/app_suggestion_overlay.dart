import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_microsoft_todo_clone/widgets/task_list.dart';
import 'package:provider/provider.dart';

class AppSuggestionOverlay extends StatelessWidget {
  final List<ToDo> data;
  const AppSuggestionOverlay({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Consumer<SuggestionOverlay>(
        builder: (context, suggestionOverlayProvider, _) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(22.5, statusBar + 12, 22, 0),
          child: Column(children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Suggestions',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 25,
                    color: Colors.white,
                  ),
                  onPressed: () => {
                    suggestionOverlayProvider.changeSuggestionOverlayDisplay(),
                  },
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Yesterday',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.5,
                              fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: Colors.white,
                          ),
                          onPressed: () => {},
                        )
                      ],
                    ),
                  ),
                  TaskList(todos: data, isSuggestions: true),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recently Added',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.5,
                              fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 25,
                            color: Colors.white,
                          ),
                          onPressed: () => {},
                        )
                      ],
                    ),
                  ),
                  TaskList(todos: data, isSuggestions: true)
                ],
              ),
            ),
          ]),
        ),
      );
    });
  }
}
