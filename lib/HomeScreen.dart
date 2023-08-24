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
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.pink,
      Colors.black,
      Colors.purple,
      Colors.orange,
      Colors.brown,
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid VIew"),
        ),
        body: GridView.builder(itemBuilder: (context, index) {
          return Container(
            color: arrColors[index],
          );
        }, itemCount: arrColors.length, gridDelegate:
         SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,
         crossAxisSpacing: 11,
         mainAxisSpacing: 11,),
        )

        // GridView.count(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 11,
        //   mainAxisSpacing: 11,
        //   children: [
        //     Container(color: arrColors[0]),
        //     Container(color: arrColors[1]),
        //     Container(color: arrColors[2]),
        //     Container(color: arrColors[3]),
        //     Container(color: arrColors[4]),
        //     Container(color: arrColors[5]),
        //     Container(color: arrColors[6]),
        //     Container(color: arrColors[7]),
        //     Container(color: arrColors[8]),
        //   ],
        // ),

        // GridView.extent(maxCrossAxisExtent: 100,
        // crossAxisSpacing: 11,
        // mainAxisSpacing: 11,
        // children: [
        //     Container(color: arrColors[0]),
        //     Container(color: arrColors[1]),
        //     Container(color: arrColors[2]),
        //     Container(color: arrColors[3]),
        //     Container(color: arrColors[4]),
        //     Container(color: arrColors[5]),
        //     Container(color: arrColors[6]),
        //     Container(color: arrColors[7]),
        //     Container(color: arrColors[8]),
        // ],
        // )

        );
  }
}
