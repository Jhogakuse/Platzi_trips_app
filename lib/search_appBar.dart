import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stackHeaderAppBar = Stack(
      children: [
        Container(
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: 140,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/img/Tucan.jpg"),
                        colorFilter: ColorFilter.mode(
                            Color.fromRGBO(70, 135, 190, 0.95),
                            BlendMode.srcATop
                        )
                    )
                ),
                child: Text("Designers",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
        )
      ],
    );
    return stackHeaderAppBar;
  }

}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 38);
    var firstStart = Offset(size.width / 6, size.height - 40);
    var firstEnd = Offset(size.width / 2 - size.width / 6, size.height - 20);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width / 2, size.height - 5);
    var secondEnd = Offset(size.width / 2 + size.width / 6, size.height - 20);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    var thirdStart = Offset(size.width - (size.width / 6), size.height - 40);
    var thirdEnd = Offset(size.width, size.height - 38);
    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}