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
      body: Container(
        width: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 11,
          runSpacing: 11,
          alignment: WrapAlignment.,
          children: [
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.black,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.red,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.blue,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.yellow,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.green,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.pink,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.cyan,
            ),
            Container(
              width: 102.5,
              height: 102.5,
              color: Colors.purple,
            ),
          ],
          ),
      )
    );
  }
}
