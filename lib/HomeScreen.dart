import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    


    return Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
           child: Center(
             child: Container(
             width: 150,
             height: 150,
             decoration: BoxDecoration(
              color: Colors.grey,
              // borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: 3,
                color: Colors.red,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 21,
                  color: Colors.cyan,
                  spreadRadius: 21
                )
              ],
              shape: BoxShape.circle
        ),
       ),
      )
     )
    );
  }
}


