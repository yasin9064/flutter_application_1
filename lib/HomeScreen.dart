import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Image"),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Image.asset('assets/images/Neontube.png')),
        ));
  }
}
