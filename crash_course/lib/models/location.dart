import 'package:crash_course/models/location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Elixir', 'assets/images/phoex.jpeg', [
      LocationFact('Phoenix', 'Web Framework'),
      LocationFact('Phoenix', 'Web Framework'),
      LocationFact('Phoenix', 'Web Framework')
    ]),
    ];
  }

}
