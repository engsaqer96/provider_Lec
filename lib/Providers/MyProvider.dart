import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  int age=27;
  double gpa=90.2;
  bool selected=false;
 grow(){
   age++;
   print('age : $age');
   notifyListeners();
 }
 toggle(){
   selected=!selected;
   notifyListeners();
 }

  success(){
    gpa+=.1;
    notifyListeners();
  }
  MyProvider(){
    print('iam the king');
  }

}