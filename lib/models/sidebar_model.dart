import 'package:flutter/cupertino.dart';

class SideBar with ChangeNotifier {
  bool show = false;

  changeSideBarDisplay() {
    show = !show;
    notifyListeners();
  }
}
