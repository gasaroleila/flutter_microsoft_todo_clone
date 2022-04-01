import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

import '../models/models.dart';
import 'package:flutter/material.dart';

const List<ToDo> todoData = [
  ToDo(
    title: 'Physics notes',
    category: 'Tasks',
  ),
  ToDo(
    title: 'Physics notes',
    category: 'Tasks',
  ),
  ToDo(
    title: 'Physics notes',
    category: 'Tasks',
  )
];

const List<MenuItems> menuItems = [
  MenuItems(
      title: 'My Day',
      icon: Icon(Icons.sunny,
          size: 27, color: Color.fromARGB(255, 148, 202, 238))),
  MenuItems(
      title: 'Important',
      icon: Icon(Icons.star_border_outlined, size: 27, color: Palette.imp)),
  MenuItems(
      title: 'Planned',
      icon: Icon(Icons.add_chart_rounded, size: 27, color: Palette.planned)),
  MenuItems(
      title: 'Assigned to me',
      icon: Icon(Icons.supervisor_account_rounded,
          size: 27, color: Palette.assigned)),
  MenuItems(
      title: 'Tasks',
      icon: Icon(Icons.house_rounded,
          size: 27, color: Color.fromARGB(255, 148, 202, 238)))
];

const List<MenuItems> menuList = [
  MenuItems(
      title: 'Untitled list',
      icon:
          Icon(Icons.menu, size: 27, color: Color.fromARGB(255, 53, 111, 219))),
];
