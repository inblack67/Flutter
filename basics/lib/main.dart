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
      body: Center(
          child: Text(
        'Hello',
        style: TextStyle(
          color: Colors.red[500],
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          fontFamily: 'Montserrat',
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[500],
      ),
    ));
  }
}
