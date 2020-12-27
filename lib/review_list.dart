import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final listView = Column(
      children: [
        Review("assets/img/avatares.jpg", "Tulio Triviño"),
        Review("assets/img/avatares.jpg", "Juan Carlos Bodoque"),
        Review("assets/img/avatares.jpg", "Juanin Jan Harry"),
      ],
    );
    return listView;
  }
}