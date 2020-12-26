import 'package:flutter/material.dart';

class Star extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin:EdgeInsets.only(
          top:323.0,
          right: 3.0
      ),

      child: Icon(
          Icons.star,
          color: Colors.amber
      ),
    );
    return star;
  }
}