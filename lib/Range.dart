// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class Range extends StatefulWidget {
  @override
  State<Range> createState() => _RangeState();
}

class _RangeState extends State<Range> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider'),
      ),
      body: Center(
          child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 20,
              min: 0,
              max: 100,
              activeColor: Colors.orange,
              inactiveColor: Colors.orange.shade100,
              onChanged: (newValue) {
                values = newValue;
                print('${newValue.start}, ${newValue.end}');
                setState(() {});
              })),
    );
  }
}
