import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lic/Helpers/ThemeHelper.dart';
import 'package:provider_lic/Providers/MyProvider.dart';
import 'package:provider_lic/Providers/ThemeProvider.dart';

import 'ChangePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    print('build');
    return Consumer<ThemeProvider>(builder: (context,provider,x){
      return  MaterialApp(
        theme: provider.myTheme,
        home: Scaffold(
          appBar: AppBar(
            actions: [ Switch(value: provider.myTheme==ThemeHelper.dark, onChanged: (value){
              provider.changeTheme(value);
              }),

            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Selector2<MyProvider,MyProvider,int>(
                builder: (context, value, child) {
                  print('re build from Consumer');
                  return Text(value.toString(), textAlign: TextAlign.center);
                },
                selector: (Context,provider,provider2) => provider.age,
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<MyProvider>(context, listen: false).grow();
                },
                child: const Text('Change'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:
                        (context) => ChangePage(),));
                  },
                  child: const Text('Move to change page')),
            ],
          ),
        ),
      );
    });

  }
}
