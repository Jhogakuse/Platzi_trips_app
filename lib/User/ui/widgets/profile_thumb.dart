import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../widgets/floating_action_button.dart';

class ProfileThumb extends StatelessWidget {
  String pathImg = "assets/img/p_playa_001.jpg";

  ProfileThumb(this.pathImg);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Padding(
      padding: EdgeInsets.only(bottom: 50.0),
      child: Container(
        height: 200.0,
        width: 500.0,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pathImg),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 7.0),
              ),
            ]
        ),
      ),
    );

    final description = Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 130),
        child: SizedBox(
          width: 250,
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 7.0),
                ),
              ]
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                      color: Colors.black38,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Steps",
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return Stack(
      children: [
        card,
        description,
        new Padding(
          padding: EdgeInsets.only(top: 190, left: 210),
          child: new FloatingActionButtonGreen(),
        ),
      ],
    );
  }
}