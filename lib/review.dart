import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImg = "assets/img/avatares.jpg";
  String nameUserTxt = "Varuna Yasas";
  String details = " 1 rewiew 5 photos";
  String comment = "There is amazing plance in the beach!";
  Review(this.pathImg, this.nameUserTxt);

  @override
  Widget build(BuildContext context) {
    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        nameUserTxt,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComments,
      ],
    );
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImg),
        ),
      ),
    );
    final photoRow = Row(
      children: [
        photo,
        userDetails,
      ],
    );
    return photoRow;
  }
}