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
        title: const Text("Wrap Widget"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous, size: 75, color: Colors.lightBlue,),
            SizedBox(
             width: 11,
            ),
            Icon(Icons.play_circle_outline, size: 100, color: Colors.lightBlue,),
            SizedBox(
              width: 11
              ),
            Icon(Icons.skip_next, size: 75, color: Colors.lightBlue,)
          ],
        )
      )
    );
  }
}
