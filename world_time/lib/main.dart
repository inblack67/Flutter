import 'package:flutter/material.dart';
import 'package:world_time/choose_location.dart';
import 'package:world_time/home.dart';
import 'package:world_time/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/choose-location': (context) => ChooseLocation(),
      },
    );
  }
}
