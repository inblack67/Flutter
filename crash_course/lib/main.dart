import 'package:crash_course/components/containers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: LocationDetails(),
  )
);

class LocationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext ctx){
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      // stretch => left to right horizontally
      body: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch ,children: [
        MyBox(Colors.red, "Hello"),
        MyBox(Colors.green, "Hello"),
        MyBox(Colors.blue, "How Low"),
      ],),
    );
  }
}
