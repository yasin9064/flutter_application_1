// ignore_for_file: unused_import, must_be_immutable, file_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI_Helper/utii.dart';
import 'package:flutter_application_1/Widgets/Buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _width = 200.0;
  var _height = 100.0;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.indigo
  );
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Animated Container')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,
                decoration: myDecor,
                curve: Curves.bounceOut,
                duration: Duration(seconds: 3),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.yellow
                        );
                        flag = false;
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.indigo
                        );
                        flag = true;
                      }
                    });
                  },
                  child: Text('Animate'))
            ],
          ),
        ));
  }
}
