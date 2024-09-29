import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  int counter=0;
  RiverpodModel({required this.counter});
  void addCounter() {
    counter++;
    notifyListeners();
  }

  void removeCounter() {
    if (counter != 0) {
      counter--;
    }
    notifyListeners();
  }
  void clear() {
    counter=0;
    notifyListeners();
  }

  
}
