import 'package:flutter/material.dart';
import 'package:forms/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext ctx){
    return MaterialApp(
      title: "Forms",
      home: HomeMaterial()
    );
  }
}
