import 'package:flutter/material.dart';
import 'package:list_data/quote.dart';

void main() => runApp(MaterialApp(
      home: WLists(),
    ));

class WLists extends StatefulWidget {
  @override
  _WListsState createState() => _WListsState();
}

class _WListsState extends State<WLists> {
  List<Quote> _quotes = [
    Quote(author: 'Everyone', text: 'Hello worlds'),
    Quote(author: 'Unknown', text: 'do you even Vim?'),
    Quote(author: 'FP', text: 'Do you code functional programming?'),
  ];

  Widget getCard(Quote quote) => Card(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.author,
                style: TextStyle(
                  color: Colors.grey[850],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                quote.text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
      ),
      body: Column(
        children: _quotes.map((quote) => getCard(quote)).toList(),
      ),
    );
  }
}
