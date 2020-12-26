import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 30.0,
          right: 20.0
      ),
      child: Text(
        "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, "
            "sapien leo praesent etiam iaculis metus ut, "
            "consequat lacinia taciti ultrices at tellus integer. "
            "Nulla ad conubia donec senectus netus ultrices semper, "
            "metus malesuada ridiculus mollis varius himenaeos tellus, "
            "potenti habitasse natoque phasellus integer tristique.",
        style: TextStyle(
            fontSize: 11.0
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return description;
  }
}