import 'package:flutter/material.dart';

class StarBorder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin:EdgeInsets.only(
          top:350.0,
          right: 3.0
      ),

      child: Icon(
          Icons.star_border,
          color: Colors.amber
      ),
    );
    return star;
  }
}