// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen.dart';
import 'package:flutter_application_1/IntroScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        )
      ),
      home: IntroScreen()
    );
  }
}

