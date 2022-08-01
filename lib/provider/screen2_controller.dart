import 'package:flutter/cupertino.dart';

class ScreenTwoProvider extends ChangeNotifier{
  bool isFavorite =false;

  changeFav(){
    isFavorite=!isFavorite;
    notifyListeners();
  }
}