// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';
import 'package:flutter_application_1/Widgets/Buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: const Text("Positioned Widget"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 41,
              left: 41,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            )
          ],
        ) ,
        )
    );
  }
}
