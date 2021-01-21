import 'package:flutter/material.dart';
import 'desciption_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            new DescriptionPlace(
              "Dwilli Ella",
              4,
              "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, "
                  "sapien leo praesent etiam iaculis metus ut, "
                  "consequat lacinia taciti ultrices at tellus integer. "
                  "Nulla ad conubia donec senectus netus ultrices semper, "
                  "metus malesuada ridiculus mollis varius himenaeos tellus, "
                  "potenti habitasse natoque phasellus integer tristique.",
            ),
            new ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}