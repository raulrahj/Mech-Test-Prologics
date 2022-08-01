import 'package:flutter/cupertino.dart';

class ConfigProvider extends ChangeNotifier {
  int index = 0;
  bool isToggle = false;
  bool isExpand = false;
  bool isImgVisible = false;
  bool isImgVisible2= false;
  changeIndex(int current) {
    index = current;
    notifyListeners();
  }

  switchToggle(bool isChange) {
    isToggle = isChange;
    notifyListeners();
  }

  orderStatusVisibility(bool value) {
    isExpand = !isExpand;
    notifyListeners();
  }

  imgVisibility() {
    isImgVisible = !isImgVisible;
    notifyListeners();
  }

  imgVisibility2() {
    isImgVisible2 = !isImgVisible2;
    notifyListeners();
  }
}
