import 'dart:math';
import 'package:flutter/material.dart';

class MyColor with ChangeNotifier {
  final Random _random = Random();

  bool _isSwitched = true;

  Color _color = Color(0xFFFFFFFF);

  Color get getAppBarColor => _color;

  Color get getAnimatedContainerColor => _color;

  bool get isSwitchedValue => _isSwitched;

  void changeColors(bool isSwitched) {
    if (_isSwitched != isSwitched) {
      _isSwitched = isSwitched;
      _color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );
    }

    notifyListeners();
  }
}
