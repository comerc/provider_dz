import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreenModel with ChangeNotifier {
  final Random _random = Random();

  bool _isEnabled = false;

  Color _appBarColor = Colors.deepPurple;

  Color _containerColor = Colors.greenAccent;

  Color get appBarColor => _appBarColor;

  Color get containerColor => _containerColor;

  bool get isEnabled => _isEnabled;

  set isEnabled(bool value) {
    if (_isEnabled != value) {
      _isEnabled = value;
      _appBarColor = _getRandomColor();
      _containerColor = _getRandomColor();
      notifyListeners();
    }
  }

  Color _getRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1,
    );
  }
}
