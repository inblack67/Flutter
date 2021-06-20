import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Fundamentals"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello")
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Text("Click"),),
      )
    );
  }
}
