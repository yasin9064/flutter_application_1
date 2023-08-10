import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Asim',
      'Yasin',
      'Artaza',
      'Zishan',
      'Amar',
      'Tarique',
      'Meraj',
      'Raunaque',
      'Maher'
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 100,
              thickness: 4,
            );
          },
        )
    );
  }
}

class rerturn {}
