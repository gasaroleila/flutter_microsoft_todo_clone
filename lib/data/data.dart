import 'package:flutter_microsoft_todo_clone/utils/palette.dart';

import '../models/models.dart';
import 'package:flutter/material.dart';

const List<ToDo> todoData = [
  ToDo(
    title: 'Learn Get X',
    category: 'Tasks',
  ),
  ToDo(
    title: 'Read more about VueRouter',
    category: 'Tasks',
  ),
  ToDo(
    title: 'Read a book',
    category: 'Tasks',
  )
];

const List<MenuItems> menuItems = [
  MenuItems(
      title: 'My Day',
      route: '/',
      icon: Icon(Icons.sunny,
          size: 27, color: Color.fromARGB(255, 148, 202, 238))),
  MenuItems(
      title: 'Important',
      route: '/important',
      icon: Icon(Icons.star_border_outlined, size: 27, color: Palette.imp)),
  MenuItems(
      title: 'Planned',
      route: '/planned',
      icon: Icon(Icons.add_chart_rounded, size: 27, color: Palette.planned)),
  MenuItems(
      title: 'Assigned to me',
      route: '/assigned',
      icon: Icon(Icons.supervisor_account_rounded,
          size: 27, color: Palette.assigned)),
  MenuItems(
      title: 'Tasks',
      route: '/tasks',
      icon: Icon(Icons.house_rounded,
          size: 27, color: Color.fromARGB(255, 148, 202, 238)))
];

const List<MenuItems> menuList = [
  MenuItems(
      title: 'Untitled list',
      route: '',
      icon:
          Icon(Icons.menu, size: 27, color: Color.fromARGB(255, 53, 111, 219))),
];
