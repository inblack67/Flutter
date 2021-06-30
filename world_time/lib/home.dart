import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Object? data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments;
    print(data);

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
