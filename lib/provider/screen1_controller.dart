import 'package:flutter/material.dart';

class ScreenOneProvider extends ChangeNotifier {
  bool isImgExpand = false;
  // bool isProductTwo = false;
  expandImg(bool isExpand) {
    isImgExpand = isExpand;
    notifyListeners();
  }
}
