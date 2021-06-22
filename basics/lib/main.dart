import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Fundamentals',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: Center(
          child: Image(image: AssetImage('assets/images/black.jpg')
              /*
        NetworkImage(
            'https://images.unsplash.com/photo-1517999144091-3d9dca6d1e43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'),
         */
              )),
      //     child: Image(
      //   image: NetworkImage(
      //       'https://images.unsplash.com/photo-1517999144091-3d9dca6d1e43?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'),
      // )),
      // body: Center(
      //     child: Text(
      //   'Hello',
      //   style: TextStyle(
      //     color: Colors.red[500],
      //     fontWeight: FontWeight.bold,
      //     fontSize: 20.0,
      //     fontFamily: 'Montserrat',
      //   ),
      // )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[500],
      ),
    ));
  }
}
