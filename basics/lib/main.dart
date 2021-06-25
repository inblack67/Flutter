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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('hello'),
          ElevatedButton(onPressed: () {}, child: Text('worlds')),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(16.0),
            child: Text('some container'),
          )
        ],
      ),
    ));
  }
}
