import 'package:flutter/material.dart';

class ProviderDemo extends ChangeNotifier {
  String test = "Code with mallu";

  void changeValue(String val) {
    test = val;
    ChangeNotifier();
  }
}
