import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the ChangeNotifier provider
final numberchangeProvider =
    ChangeNotifierProvider<Counterriverpod>((ref) => Counterriverpod());

class Counterriverpod extends ChangeNotifier {
  int count = 0;

  // Increase the count and notify listeners
  void increase() {
    count++;
    notifyListeners();  // Notify listeners after state change
  }

  // Decrease the count and notify listeners
  void decrease() {
    if (count != 0) {
      count--;
      notifyListeners();  // Notify listeners after state change
    }
  }

  // Clear the count and notify listeners
  void clear() {
    count = 0;
    notifyListeners();  // Notify listeners after state change
  }
}
