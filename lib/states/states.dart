import 'package:flutter/material.dart';

class States with ChangeNotifier {
  int indexTabBar = 0;

  void setIndexTabBar(int index) {
    indexTabBar = index;
    notifyListeners();
  }

}