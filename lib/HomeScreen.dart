import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
        appBar: AppBar(
          title: Text("Card Widget"),
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.cyan,
            color: Colors.black,
            elevation: 20,
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Paradox', style: TextStyle(fontSize: 40, color: Colors.cyan),),
          )),
        )
      );
  }
}
