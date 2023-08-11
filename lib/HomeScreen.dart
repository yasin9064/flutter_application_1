import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    


    return Scaffold(
        appBar: AppBar(
          title: Text("Expanded Widget"),
        ),
        body: Container(
          color: Colors.cyan,
          margin: EdgeInsets.only(top: 30, left: 40),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text('Paradox!',style: TextStyle(fontSize: 30,color: Colors.black),),
          ),
        )
    );
  }
}


