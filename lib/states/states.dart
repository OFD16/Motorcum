import 'package:flutter/material.dart';

class States with ChangeNotifier {
  int indexTabBar = 0;
  int indexDetailsBar = 0;

  void setIndexTabBar(int index) {
    indexTabBar = index;
    notifyListeners();
  }

  void setIndexDetailsBar(int index) {
    indexDetailsBar = index;
    notifyListeners();
  }

}