// ignore_for_file: use_key_in_widget_constructors, file_names, must_be_immutable, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen.dart';

class StartingScreen extends StatelessWidget {

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StartingScreen'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome Paradox', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              SizedBox(height: 11),
        
              TextField(controller: nameController,),

              SizedBox(height: 11),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen(nameController.text.toString()))));
              }, child: Text('Enter'))
            ],
          ),
        ),
      ),
    );
  }
}
