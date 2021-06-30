import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  String bgImage = 'day.jpg';
  Color bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    bgColor = data['isDayTime'] ? Colors.blue : Colors.black;
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/$bgImage'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: bgColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose-location');
                },
                icon: Icon(Icons.location_city),
                label: Text('Edit Location'),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
