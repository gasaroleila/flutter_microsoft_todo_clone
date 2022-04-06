import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';
import 'package:provider/provider.dart';

// ignore: constant_identifier_names

class AppMenu extends StatelessWidget {
  final List<MenuItems> items;
  final double height;
  const AppMenu({Key? key, required this.items, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SideBar>(builder: (context, data, _) {
      return SizedBox(
        height: height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: items.length,
            itemBuilder: (BuildContext context, index) {
              final MenuItems menuItem = items[index];
              return Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, menuItem.route);
                    data.changeSideBarDisplay();
                  },
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      menuItem.icon,
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          menuItem.title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }
}
