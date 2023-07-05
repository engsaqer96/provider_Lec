
import 'package:flutter/material.dart';
import 'package:provider_lic/Helpers/ThemeHelper.dart';

class ThemeProvider extends ChangeNotifier{
    ThemeData myTheme=ThemeHelper.light;
    changeTheme(bool mode){
       myTheme=mode?ThemeHelper.dark:ThemeHelper.light;
       notifyListeners();
    }

}