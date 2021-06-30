import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flagURL;
  String apiQueryURL;
  bool isDayTime = false;

  WorldTime(
      {required this.flagURL,
      required this.location,
      required this.apiQueryURL});

  Future<void> getTime() async {
    try {
      Response res = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$apiQueryURL'));
      Map data = jsonDecode(res.body);
      String utcDate = data['utc_datetime'];
      String utcOffset = data['utc_offset'];
      DateTime currentTime = DateTime.parse(utcDate)
          .add(Duration(hours: int.parse(utcOffset.substring(1, 3))));
      isDayTime =
          currentTime.hour > 6 && currentTime.hour < 18 ? true : false;
      time = DateFormat.jm().format(currentTime);
    } catch (e) {
      print(e);
      time = 'Error in fetching time';
    }
  }
}
