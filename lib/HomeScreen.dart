import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("InkWell Widget"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),                  
                          height: 200,
                          width: 200,
                          color: Colors.lightBlue,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),                  
                          height: 200,
                          width: 200,
                          color: Colors.grey,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),                  
                          height: 200,
                          width: 200,
                          color: Colors.pink,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),                  
                          height: 200,
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),                  
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),                 
                  height: 200,
                  color: Colors.purple,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),                 
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),                 
                  height: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),                  
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        )
        
        
        );
  }
}
