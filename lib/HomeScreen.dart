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
    // var arrNumbers = ['1, 2, 3, 4, 5, 6, 7, 8, 9'];
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text('${index+1}'),
                title: Text(arrNames[index]),
                subtitle: Text('Number'),
                trailing: Icon(Icons.add),
              );
            },
            itemCount: arrNames.length,
            separatorBuilder: (context, index) {
              return Divider(
                height: 20,
                thickness: 1,
              );
            }));
  }
}
