import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen.dart';

void main() {
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
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        )
      ),
      home: HomeScreen()
    );
  }
}

