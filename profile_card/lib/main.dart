import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: WCard()));

class WCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 4.0),
        ),
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Anime Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          // elevation: 0.0,
        ));
  }
}
