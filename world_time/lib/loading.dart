import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response res = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Europe/london'));
    Map data = jsonDecode(res.body);
    String utcDate = data['utc_datetime'];
    String utcOffset = data['utc_offset'];
    DateTime currentTime = DateTime.parse(utcDate)
        .add(Duration(hours: int.parse(utcOffset.substring(1, 3))));
    print(currentTime);
  }

  @override
  void initState() {
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Loading...'));
  }
}
