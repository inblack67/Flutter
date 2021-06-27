import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: <Widget>[
        TextButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, '/choose-location');
          },
          icon: Icon(Icons.location_city),
          label: Text('Choose Location'),
        )
      ]),
    ));
  }
}
