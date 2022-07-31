import 'package:flutter/cupertino.dart';

class ConfigProvider extends ChangeNotifier {
  int index = 0;
  bool isToggle = false;
  changeIndex(int current) {
    index = current;
    notifyListeners();
  }

  switchToggle(bool isChange) {
    isToggle = isChange;
    notifyListeners();
  }
}
