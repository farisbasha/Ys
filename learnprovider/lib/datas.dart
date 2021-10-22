import 'package:flutter/material.dart';

class Datas extends ChangeNotifier {
  String data = "Hello";
  List dataList = ["Hello", "how r u"];

  void ValueChanger(value){
    data = value;
    notifyListeners();
  }
}
