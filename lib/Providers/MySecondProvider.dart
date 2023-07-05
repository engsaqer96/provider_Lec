import 'package:flutter/material.dart';

class MySecondProvider extends ChangeNotifier{
  String myName='';

  addChar(String char){
    myName+=char;
    notifyListeners();
  }
}