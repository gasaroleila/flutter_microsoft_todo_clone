import 'package:flutter/cupertino.dart';

class SuggestionOverlay with ChangeNotifier {
  bool show = false;

  changeSuggestionOverlayDisplay() {
    show = !show;
    notifyListeners();
  }
}
