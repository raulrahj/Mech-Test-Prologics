import 'package:flutter/cupertino.dart';

class ScreenThreeProvider extends ChangeNotifier {
  bool isPicked = false;
  bool isStitching = false;
  bool isCompleted = false;
  bool isTaken = false;
  bool isDelivered = false;
  changePickup(bool value) {
    isPicked = value;
    notifyListeners();
  }

  changeStitching(bool value) {
    isStitching = value;
    notifyListeners();
  }

  changeCompleted(bool value) {
    isCompleted = value;
    notifyListeners();
  }

  changeTaken(bool value) {
    isTaken = value;
    notifyListeners();
  }

  changeDeliverd(bool value) {
    isDelivered = value;
    notifyListeners();
  }
}
