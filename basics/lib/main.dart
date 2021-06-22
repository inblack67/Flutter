import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Fundamentals',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Container(
        child: Center(
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            onPressed: () {},
            label: Text('Hello'),
          ),
        ),
      ),
    ));
  }
}
