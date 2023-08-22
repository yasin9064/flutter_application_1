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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text("Date & Time"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CurrentTime: ${DateFormat('yMMMMEEEEd').format(time)}',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('CurrentTime'),
                )
              ],
            ),
          ),
        ));
  }
}
