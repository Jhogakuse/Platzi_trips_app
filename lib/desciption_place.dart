import 'package:flutter/material.dart';
import 'star_description_place.dart';
import 'star_half.dart';
import 'star_border.dart';
import 'description_text.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final title_stars = Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 320.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Text(
                namePlace,
                style: TextStyle(
                  fontFamily: "Lato",
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
                StarHalf(),
                StarBorder(),
              ],
            ),

          ],
        ),
        new DescriptionText(descriptionPlace),
        new DescriptionText(descriptionPlace),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonPurple("Navigate")
          ],
        )
      ],
    );

    return title_stars;
  }
}