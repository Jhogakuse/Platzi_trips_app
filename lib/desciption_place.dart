import 'package:flutter/material.dart';
import 'star_description_place.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            "Dwili Ella",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: [
            Star(),
            Star(),
            Star(),
            Star(),
            Star(),
          ],
        ),

      ],
    );
    return title_stars;
  }
}