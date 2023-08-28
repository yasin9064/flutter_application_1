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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Split App into Widget"),
        ),
        body: Container(
          child: Column(children: [
            StatusBar(),
            Contacts(),
          ]),
        ));
  }
}

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(
          itemBuilder: ((context, index) => const Padding(
                padding: EdgeInsets.all(11.0),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.white70,
                  ),
                ),
              )),
          itemCount: 11,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orangeAccent,
        child: ListView.builder(
            itemBuilder: ((context, index) => const ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.blue),
                  title: Text('Name'),
                  subtitle: Text('Mob No'),
                  trailing: Icon(Icons.delete),
                ))),
      ),
    );
  }
}
