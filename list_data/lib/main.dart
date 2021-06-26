import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: WLists(),
    ));

class WLists extends StatefulWidget {
  @override
  _WListsState createState() => _WListsState();
}

class _WListsState extends State<WLists> {
  List<String> _quotes = [
    'hello',
    'worlds',
    'do you even Vim?',
    'Do you code functional programming?'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
      ),
      body: Column(
        children: _quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
