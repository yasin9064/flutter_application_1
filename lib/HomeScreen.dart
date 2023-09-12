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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget"),
        ),
        body: Container(
            color: Colors.blue.shade100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: no1Controller,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: no2Controller,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  var no1 =
                                      int.parse(no1Controller.text.toString());
                                  var no2 =
                                      int.parse(no2Controller.text.toString());

                                  var sum = no1 + no2;

                                  result = 'The sum is: $sum';

                                  setState(() {});
                                },
                                child: Text(
                                  '➕',
                                  style: TextStyle(fontSize: 20),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  var no1 =
                                      int.parse(no1Controller.text.toString());
                                  var no2 =
                                      int.parse(no2Controller.text.toString());

                                  var diff = no1 - no2;

                                  result = 'The difference is: $diff';

                                  setState(() {});
                                },
                                child: Text(
                                  '➖',
                                  style: TextStyle(fontSize: 20),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  var no1 =
                                      int.parse(no1Controller.text.toString());
                                  var no2 =
                                      int.parse(no2Controller.text.toString());

                                  var product = no1 * no2;

                                  result = 'The product is: $product';

                                  setState(() {});
                                },
                                child: Text(
                                  '❌',
                                  style: TextStyle(fontSize: 20),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  var no1 =
                                      int.parse(no1Controller.text.toString());
                                  var no2 =
                                      int.parse(no2Controller.text.toString());

                                  var times = no1 / no2;

                                  result =
                                      'The quotient is: ${times.toStringAsFixed(2)} times';

                                  setState(() {});
                                },
                                child: Text(
                                  '➗',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(21.0),
                        child: Text(
                          result,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
              ),
            )));
  }
}
