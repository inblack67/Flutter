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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
      ),
      body: Column(
        children: _quotes
            .map((quote) => Text('${quote.author} => ${quote.text}'))
            .toList(),
      ),
    );
  }
}
