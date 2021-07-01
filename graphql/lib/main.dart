import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:graphql/graphql/queries/countries.data.gql.dart';
import 'package:graphql/graphql/queries/countries.var.gql.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final client = initClient('https://countries.trevorblades.com/');
  final countriesReq = GfetchCountriesReq();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('World Nations'),
          ),
          body: Operation(
            client: client,
            operationRequest: countriesReq,
            builder: <OperationResponse<GfetchCountriesData, GfetchCountriesVars>(context, response) {
              if (response.loading) {
                return Center(child: CircularProgressIndicator());
              }

              final countries = response.data?.countries;

              return countries != null
                  ? ListView.builder(
                      itemCount: countries.length,
                      itemBuilder: (context, index) => ListTile(
                        leading: Text('   ' + countries[index].emoji),
                        title: Text(countries[index].name),
                      ),
                    )
                  : Text('None');
            },
          ),
        ));
  }
}
