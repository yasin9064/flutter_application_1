// ignore_for_file: unused_import, must_be_immutable, file_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';
import 'package:flutter_application_1/Widgets/Buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  var nameFromIntro;

  HomeScreen(this.nameFromIntro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home_Screen'),
        ),
        body: Center(
            child: Text(
          'Welcome: $nameFromIntro',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.cyan),
          textAlign: TextAlign.center,
        )));
  }
}
