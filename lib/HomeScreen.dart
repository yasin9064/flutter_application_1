import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
        appBar: AppBar(
          title: Text("Circle Avatar"),
        ),
        body: Center(
          child: CircleAvatar(
            child: Container(
              width: 60,
              height: 60,
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/images/Black-Avatar.png')),
                    Text('Name', style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
                ),
            ),
            
            backgroundColor: Colors.limeAccent,
            maxRadius: 70,
            ),
        )
      );
  }
}
