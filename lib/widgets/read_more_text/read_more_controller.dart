import 'package:flutter/material.dart';

class ReadMoreController extends ChangeNotifier {
  bool _expanded = false;

  bool get isExpanded => _expanded;

  void toggle() {
    _expanded = !_expanded;
    notifyListeners();
  }
}
