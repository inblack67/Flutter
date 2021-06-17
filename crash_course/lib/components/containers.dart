import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {

  final Color _color;
  final String _text;

  MyBox(this._color, this._text);

  @override
  Widget build(BuildContext ctx){
    return Container(
            decoration: BoxDecoration(color:  _color),
            child: Text(_text),
          );
  }
}
