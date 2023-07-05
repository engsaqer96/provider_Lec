import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lic/Providers/MyProvider.dart';
import 'package:provider_lic/UiScreen/HomePage.dart';

import 'Providers/MySecondProvider.dart';
import 'Providers/ThemeProvider.dart';
enum ThemeMode {Light,Dark}
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MyProvider>(
        create: (context) => MyProvider(),
      ),
      ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider<MySecondProvider>(
        create: (context) => MySecondProvider(),
      ),
    ],
    child: HomePage()
  ));
}
