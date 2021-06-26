import 'package:flutter/material.dart';
import 'package:list_data/quote.dart';
import 'package:list_data/quoteCart.dart';

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

  void deleteQuote(Quote quote) {
    setState(() {
      _quotes.remove(quote);
    });;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
      ),
      body: Column(
        children: _quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  deleteQuote: deleteQuote,
                ))
            .toList(),
      ),
    );
  }
}
