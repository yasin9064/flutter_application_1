import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("InkWell Widget"),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print('Got Tapped!');
            },
            onDoubleTap: () {
              print('Got Double-Tapped!');
            },
            onLongPress: () {
              print('Got LongPressed!');
            },
            child: Container(
              width: 200,
              height: 75,
              color: Colors.green,
              child: Center(
                  child: InkWell(
                      onTap: () {
                        print('Text got Tapped!');
                      },
                      child: Text(
                        'Click Here!',
                        style: TextStyle(fontSize: 25),
                      ))),
            ),
          ),
        ));
  }
}
