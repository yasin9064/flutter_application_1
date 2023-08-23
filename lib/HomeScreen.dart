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
    var datePicked = DateTime.now();
    var timePicked = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text("Date & Time"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Date',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2024));
                  if (datePicked != null) {
                    print(
                        'Date Selected: ${DateFormat('yMMMMd').format(datePicked)}');
                  }
                },
                child: Text('Show')),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timePicked = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dial);
                  if (timePicked != null) {
                    print('Time Selected: ${timePicked.hour}:${timePicked.minute}');
                        
                  }
                },
                child: Text('Select Time'))
          ],
        )));
  }
}
