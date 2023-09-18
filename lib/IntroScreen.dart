import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntroScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome Paradox', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));
            }, child: Text('Please Enter'))
          ],
        ),
      ),
    );
  }
}
