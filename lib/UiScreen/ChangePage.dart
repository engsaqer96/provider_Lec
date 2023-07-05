
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lic/Providers/MySecondProvider.dart';

import '../Conrollers/MyController.dart';
import '../Providers/MyProvider.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({super.key});

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Consumer2<MyProvider,MySecondProvider>(
        builder: (context,provider1,provider2,x)=>Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(),
          Text(provider2.myName),
          SizedBox(height: 10,),
          Text(provider1.gpa.toString()),

            MaterialButton(onPressed: (){
              provider1.success();
              provider2.addChar('a');
            },
            child: Text('Change'),)
          ],
        ),
      ),
    );
  }
}
