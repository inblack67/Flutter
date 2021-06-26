import 'package:flutter/material.dart';
import 'package:list_data/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function deleteQuote;

  QuoteCard({required this.quote, required this.deleteQuote});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            ElevatedButton.icon(
              onPressed: () => deleteQuote(quote),
              icon: Icon(Icons.delete),
              label: Text('Delete'),
            )
          ],
        ),
      ),
    );
  }
}
