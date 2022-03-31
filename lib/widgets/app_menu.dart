import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

// ignore: constant_identifier_names
const List<MenuItems> menuItems = [
  MenuItems(
      title: 'My Day',
      icon: Icon(Icons.sunny, size: 25, color: Palette.assigned)),
];

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, index) {
          final MenuItems menuItem = menuItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                menuItem.icon,
                Text(
                  menuItem.title,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          );
        });
  }
}
