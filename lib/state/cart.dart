import 'package:flutter/material.dart';
import 'package:flutterapp/state/counter.dart';

class Cart with ChangeNotifier {
  List<String> _cart = ['Iphone', 'Samsung', 'Oppo'];

  int get count => _cart.length;

  List<String> get cart => _cart;

  void addItems(String item) {
    _cart.add(item);
    notifyListeners();
  }
}
