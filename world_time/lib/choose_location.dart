import 'package:flutter/material.dart';
import 'package:world_time/services/word_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
        apiQueryURL: 'Europe/London', location: 'London', flagURL: 'uk.png'),
    WorldTime(
        apiQueryURL: 'Europe/Berlin',
        location: 'Athens',
        flagURL: 'greece.png'),
    WorldTime(
        apiQueryURL: 'Africa/Cairo', location: 'Cairo', flagURL: 'egypt.png'),
    WorldTime(
        apiQueryURL: 'Africa/Nairobi',
        location: 'Nairobi',
        flagURL: 'kenya.png'),
    WorldTime(
        apiQueryURL: 'America/Chicago',
        location: 'Chicago',
        flagURL: 'usa.png'),
    WorldTime(
        apiQueryURL: 'America/New_York',
        location: 'New York',
        flagURL: 'usa.png'),
    WorldTime(
        apiQueryURL: 'Asia/Seoul',
        location: 'Seoul',
        flagURL: 'south_korea.png'),
    WorldTime(
        apiQueryURL: 'Asia/Jakarta',
        location: 'Jakarta',
        flagURL: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Choose Location'),
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              onTap: () {},
              title: Text(locations[index].location),
            ),
          ),
        ));
  }
}
