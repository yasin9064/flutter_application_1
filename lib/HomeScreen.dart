import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    


    return Scaffold(
        appBar: AppBar(
          title: Text("Expanded Widget"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                color: Colors.black,
              )
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 100,
                color: Colors.blue,
              )
            ),
            Expanded(
              flex:2,
              child: Container(
                height: 100,
                color: Colors.brown,
              )
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                color: Colors.orange
              )
            ),

          ],
      )
    );
  }
}


