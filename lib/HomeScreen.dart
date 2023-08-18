import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
        appBar: AppBar(
          title: Text("Custom Fonts"),
        ),
        body: Center(
          child: Text('Paradox', style: TextStyle(fontFamily: 'Caprasimo', fontSize: 50),
          )
          )
      );
  }
}
