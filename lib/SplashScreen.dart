// ignore_for_file: file_names, unused_import, unnecessary_import, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/HomeScreen.dart';
import 'package:flutter_application_1/StartingScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: ((context) => StartingScreen())));
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Center(
            child: Text(
          'Paradox',
          style: TextStyle(
              fontSize: 40, fontFamily: 'Caprasimo', color: Colors.white),
        )),
      ),
    );
  }
}
