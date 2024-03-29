import 'package:flutter/material.dart';
import '../../../widgets/floating_action_button.dart';

class CardImage extends StatelessWidget{
  String pathImg = "assets/img/p_playa_001.jpg";
  CardImage(this.pathImg);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathImg),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        card,
        new FloatingActionButtonGreen(),
      ],
    );
  }
}