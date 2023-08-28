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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack Widget"),
        ),
        body: Container(
          width: 400,
          height: 400,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blueGrey
              ),
              Positioned(
                left: 21,
                top: 21,
                child: Container(
                  height: 200,
                  width: 200 ,
                  color: Colors.cyan
                  ),
              ),
              ],
            )
        )
        );
  }
}


