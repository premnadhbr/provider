import 'package:flutter/material.dart';

class ProviderDemo extends ChangeNotifier {
  String test = "Code with mallu";

  void changeValue(String val) {
    test = val;
    ChangeNotifier();
  }

  Widget widget() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
