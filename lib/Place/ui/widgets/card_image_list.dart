import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/p_playa_001.jpeg"),
          CardImage("assets/img/p_playa_002.jpeg"),
          CardImage("assets/img/p_playa_003.jpg"),
          CardImage("assets/img/p_montania_001.jpeg"),
          CardImage("assets/img/p_montania_002.jpg"),
          CardImage("assets/img/p_cataratas_001.jpg"),
        ],
      ),
    );
  }
}