// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    callBack() {
      print('Clicked!!!!');
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("CallBack Function"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Click Here!'),
            onPressed: callBack,
          ),
        ));
  }
}
