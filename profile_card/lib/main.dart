import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: WCard()));

class WCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/another.jpeg'),
                  radius: 70.0,
                ),
              ),
              Divider(
                height: 35.0,
                color: Colors.grey,
              ),
              SizedBox(height: 10.0),
              Text(
                'Title',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Another',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Genre',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Dark',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0),
              ),
              SizedBox(height: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey),
                  SizedBox(width: 10.0),
                  Text('dark@anime.com',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ))
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Animes',
            style: TextStyle(color: Colors.grey),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          // elevation: 0.0,
        ));
  }
}
