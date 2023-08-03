import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Buttons'),
        ),
        body:
            // Center(
            //   child: TextButton(
            //     child: Text('Click Here!'),
            //     onPressed: () {
            //       print("I was clicked!");
            //     }, // TODO: implement onClick event handler here...
            //     onLongPress: () {
            //       print("List Opened!");
            //     },
            //   ),
            // ),

            //       Center(
            //         child: ElevatedButton(
            //     child: Text('Start!'),
            //     onPressed: () {
            //         print('Button Pressed!');
            //     },
            //     onLongPress: () {
            //         print('You Lose.');
            //     },
            //   ),
            //  )

            OutlinedButton(
          child: Text('OutLined Button'),
          onPressed: () {
            print('Outlined Pressed!');
          },
        ) 
    );
  }
}
