import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget{
  String descriptionPlace;
  DescriptionText(this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 30.0,
          right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Colors.black45,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return description;
  }
}