import 'package:flutter/cupertino.dart';

class ConfigProvider extends ChangeNotifier {
  int index = 0;
  changeIndex(int current) {
    index = current;
    notifyListeners();
  }
}
