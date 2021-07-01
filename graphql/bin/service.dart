import 'package:graphql/client.dart';

void main(List<String> args) {
  final countriesReq = GfetchCountriesReq();
  final client = initClient('https://countries.trevorblades.com');
  client.request(countriesReq).listen((res) {});
}
