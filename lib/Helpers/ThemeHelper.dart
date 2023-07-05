import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData light=ThemeData.light().copyWith(
    scaffoldBackgroundColor: CupertinoColors.extraLightBackgroundGray,
    primaryColor: Colors.lightGreenAccent.withOpacity(.5),
    appBarTheme: AppBarTheme(color: Colors.pink.withOpacity(.3))
  );
  static ThemeData dark=ThemeData.dark().copyWith(
    scaffoldBackgroundColor: CupertinoColors.black,
    primaryColor: Colors.purple.withOpacity(.5),
      appBarTheme: AppBarTheme(color: Colors.yellow.withOpacity(.3))
  );
}