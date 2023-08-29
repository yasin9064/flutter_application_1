// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';
import 'package:flutter_application_1/Widgets/Buttons.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                buttonName: 'Play',
                icon: Icon(Icons.play_arrow),
                textStyle: myTextStyle17(),
                callback: () {
                  print('Song Played');
                },
              ),
            ),
            Container(height: 11,),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                buttonName: 'Pause',
                icon: Icon(Icons.pause),
                textStyle: myTextStyle17(),
                bgColor: Colors.deepOrange,
                callback: () {
                  print('Song Paused');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
