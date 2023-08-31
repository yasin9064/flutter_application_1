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
        child: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 16,
            color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: 'Hello '),
              TextSpan(text: 'Paradox.', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue)),
              TextSpan(text: 'Welcome to '),
              TextSpan(text: 'Flutter.', style: TextStyle(color: Colors.yellow, fontSize: 35, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontFamily: 'DancingScript'))
            ]
            ),
            ),
        ),
    );
  }
}
