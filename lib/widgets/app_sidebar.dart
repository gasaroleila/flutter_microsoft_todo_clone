import 'package:flutter/material.dart';
import 'package:flutter_microsoft_todo_clone/data/data.dart';
import 'package:flutter_microsoft_todo_clone/models/models.dart';
import 'package:flutter_microsoft_todo_clone/widgets/app_menu.dart';
import 'package:provider/provider.dart';

import '../utils/palette.dart';

class AppSideBar extends StatelessWidget {
  const AppSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SideBar>(builder: (context, data, _) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: IconButton(
                alignment: Alignment.topLeft,
                icon: const Icon(Icons.menu, color: Colors.white, size: 32),
                onPressed: () => {data.changeSideBarDisplay()},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10.0, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        'GL',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.purple),
                    ),
                  ),
                  Flex(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    direction: Axis.vertical,
                    children: const [
                      Text(
                        'Gasaro Leila',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text(
                        'uwamgaleila@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(16, 17, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.white,
                    ),
                    suffixIconColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Palette.mainBlack,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(7)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: AppMenu(
                items: menuItems,
                height: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
            Container(
              height: 1.15,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: AppMenu(
                items: menuList,
                height: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'New list',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.add_box_outlined,
                    size: 32,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
