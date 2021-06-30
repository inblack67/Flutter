import 'package:flutter/material.dart';
import 'package:world_time/services/word_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  setupWorldTime() async {
    WorldTime instance = WorldTime(
        flagURL: 'flagURL', location: 'location', apiQueryURL: 'Europe/London');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "location": instance.location,
      "time": instance.time,
      "flag": instance.flagURL,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(body: Text('Loading...')),
    );
  }
}
