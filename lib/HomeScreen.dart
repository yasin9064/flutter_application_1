import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
        appBar: AppBar(
          title: Text("Style & Theme"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Lord', style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.deepOrange),),
              Text('Lord', style: Theme.of(context).textTheme.subtitle1,),
              Text('Paradox', style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.indigo),),
              Text('Paradox', style: myTextStyle15(textColor: Colors.red),),
            ],
          ),
        ),
      );
  }
}
