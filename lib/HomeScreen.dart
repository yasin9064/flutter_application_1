import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rows & Columns"),
        ),
        body: Container(
         width: 415,
         height: 715,  
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'B',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'C',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'D',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'F',
                style: TextStyle(fontSize: 25),
              ),
            ]
           ),
              Text(
                'A',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'B',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'C',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'D',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'F',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  child: Text('Click'),
                  onPressed: () {
                    print('Got Clicked!');
                  }),

                        

            ],
          ),

          
        )
        );
  }
}
