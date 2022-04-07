import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:flutter_microsoft_todo_clone/widgets/app_sidebar.dart';
import 'package:flutter_microsoft_todo_clone/widgets/app_suggestion_overlay.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';
import 'package:provider/provider.dart';

class MainListLayout extends StatefulWidget {
  final List<ToDo> data;
  final String title;
  final bool isMyDay;
  final Icon headerIcon;

  const MainListLayout(
      {Key? key,
      required this.data,
      required this.title,
      this.isMyDay = false,
      this.headerIcon =
          const Icon(Icons.lightbulb, size: 25, color: Colors.white)})
      : super(key: key);

  @override
  _MainListLayoutState createState() => _MainListLayoutState();
}

class _MainListLayoutState extends State<MainListLayout> {
  bool showSideBar = false;
  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SideBar>(create: (context) => SideBar()),
        ChangeNotifierProvider<SuggestionOverlay>(
            create: (context) => SuggestionOverlay())
      ],
      child: Consumer2<SideBar, SuggestionOverlay>(
          builder: (context, sideBarProvider, suggestionOverlayProvider, _) {
        return Stack(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(22.5, statusBar + 12, 22, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: IconButton(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.menu,
                              color: Colors.white, size: 32),
                          onPressed: () =>
                              {sideBarProvider.changeSideBarDisplay()},
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        AppHeader(
                          title: widget.title,
                          isMyDay: widget.isMyDay,
                        ),
                        TaskList(
                          todos: widget.data,
                          isMain: true,
                        ),
                        const AddTask()
                      ],
                    ),
                  ],
                )),
            sideBarProvider.show
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    color: Colors.black,
                    child: ListView(
                      children: const [AppSideBar()],
                    ),
                  )
                : const SizedBox.shrink(),
            suggestionOverlayProvider.show
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: ListView(
                      children: const [AppSuggestionOverlay()],
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        );
      }),
    );
  }
}
