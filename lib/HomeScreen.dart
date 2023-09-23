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
  var weightController = TextEditingController();

  var feetController = TextEditingController();

  var inchController = TextEditingController();

  var result = '';
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI')),
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: Container(
              width: 380,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'B',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          color: Colors.red),
                    ),
                    Text(
                      'M',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          color: Colors.amber),
                    ),
                    Text(
                      'I',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w800,
                          color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text(
                        'Enter your Weight(in Kg)',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                      prefixIcon: Icon(Icons.line_weight, color: Colors.red),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.red, width: 1.5)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.red.shade300, width: 1.5))),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: feetController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text(
                        'Enter your Height(in Feet)',
                        style: TextStyle(color: Colors.amber, fontSize: 18),
                      ),
                      prefixIcon: Icon(
                        Icons.height,
                        color: Colors.amber,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.amber, width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.amber.shade300, width: 1.5))),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: inchController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text(
                        'Enter your Height(in Inch)',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ),
                      prefixIcon: Icon(
                        Icons.height,
                        color: Colors.green,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green, width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.green.shade300, width: 1.5))),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      var weight = weightController.text.toString();
                      var feet = feetController.text.toString();
                      var inch = inchController.text.toString();

                      if (weight != '' && feet != '' && inch != '') {
                        //BMI Calculation
                        var iWeight = int.parse(weight);
                        var iFeet = int.parse(feet);
                        var iInch = int.parse(inch);

                        var tInch = (iFeet * 12) + iInch;
                        var tCm = tInch * 2.54;
                        var tMeter = tCm / 100;
                        var bmi = iWeight / (tMeter * tMeter);

                        var message = '';

                        if (bmi > 25) {
                          message = "You're OverWeight!!";
                          bgColor = Colors.red.shade200;
                        } else if (bmi < 18) {
                          message = "You're UnderWeight!!";
                          bgColor = Colors.amber.shade200;
                        } else {
                          message = "You're Healthy!!";
                          bgColor = Colors.green.shade200;
                        }

                        setState(() {
                          result = '$message \n Your BMI is: ${bmi.toStringAsFixed(2)}';
                        });
                      } else {
                        setState(() {
                          result = 'Please fill all the required fields!!';
                        });
                      }
                    },
                    child: Text(
                      'Calculate',
                      style: TextStyle(fontSize: 22),
                    )),
                SizedBox(height: 11),
                Text(
                  result,
                  style: TextStyle(fontSize: 18),
                )
              ]),
            ),
          ),
        ));
  }
}
