import 'package:flutter/material.dart';
import '../widgets/profile_main_button.dart';
import '../widgets/profile_list_thumb.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
          child: Container(
            height: 350.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0f6faf),
                  Color(0xFF0faf97),
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.5),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp,
              ),
            ),

            child: ClipPath(
              clipper: ClipPathClass(),
              child: SizedBox(
                width: 320.0,
                height: 300.0,
              ),
            ),
          ),
        ),

        ProfileListThumb(),

        ClipRRect(
          child: Container(
            height: 300.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // color: Colors.red,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0f6faf),
                  Color(0xFF0faf97),
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.5),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp,
              ),
            ),

            child: ClipPath(
              clipper: ClipPathClass(),
              child: SizedBox(
                width: 320,
                height: 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 65.0),
                          child: Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 75.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/img/Tortuga.png"),
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Patana Tufillo",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "patana_tufillo@31min.cl",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileMainButton(
                            "Guardar", Icons.bookmark_border_rounded, true,
                            false),
                        ProfileMainButton(
                            "Compras", Icons.shopping_bag, false, false),
                        ProfileMainButton("Agregar", Icons.add, true, true),
                        ProfileMainButton("Email", Icons.email, false, false),
                        ProfileMainButton(
                            "Ubicación", Icons.person_pin, false, false),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}