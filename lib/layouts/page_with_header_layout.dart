import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/widgets/app_sidebar.dart';
import 'package:flutter_microsoft_todo_clone/widgets/widgets.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:provider/provider.dart';

class PageWithHeaderLayout extends StatelessWidget {
  final List<ToDo> data;
  final Color color;
  final Icon headerIcon;
  final Widget child;
  const PageWithHeaderLayout(
      {Key? key,
      required this.data,
      required this.color,
      required this.headerIcon,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBar = MediaQuery.of(context).padding.top;
    return Consumer<SideBar>(builder: (context, stateData, _) {
      return Stack(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(22.5, statusBar + 12, 22, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: IconButton(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.zero,
                          onPressed: () => {
                                print(stateData.show),
                                stateData.changeSideBarDisplay()
                              },
                          icon: Icon(Icons.menu, color: color, size: 32)),
                    ),
                  ),
                  Column(
                    children: [
                      AppHeader(
                        title: 'Assigned to me',
                        color: color,
                        icon: headerIcon,
                      ),
                      Container(
                        child: child,
                      )
                    ],
                  ),
                ],
              )),
          stateData.show
              ? Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  color: Colors.black,
                  child: ListView(
                    children: const [AppSideBar()],
                  ),
                )
              : const SizedBox.shrink()
        ],
      );
    });
  }
}
