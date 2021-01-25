import 'package:flutter/material.dart';

class StarHalf extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin:EdgeInsets.only(
          top:350.0,
          right: 3.0
      ),

      child: Icon(
          Icons.star_half,
          color: Colors.amber
      ),
    );
    return star;
  }
}