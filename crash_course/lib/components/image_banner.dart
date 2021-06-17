import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _url;

  ImageBanner(this._url);

  @override
  Widget build(BuildContext ctx){
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(_url, fit: BoxFit.cover,)
    );
  }
}
