import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_thumb.dart';

class ProfileListThumb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: 300.0,
        child: Padding(
          padding: EdgeInsets.only(top: 280.0),
          child: ListView(
            children: [
              ProfileThumb("assets/img/p_playa_001.jpeg"),
              ProfileThumb("assets/img/p_playa_002.jpeg"),
              ProfileThumb("assets/img/p_playa_003.jpg"),
              ProfileThumb("assets/img/p_montania_001.jpeg"),
              ProfileThumb("assets/img/p_montania_002.jpg"),
              ProfileThumb("assets/img/p_cataratas_001.jpg"),
              ProfileThumb("assets/img/p_playa_001.jpeg"),
              ProfileThumb("assets/img/p_playa_002.jpeg"),
              ProfileThumb("assets/img/p_playa_003.jpg"),
              ProfileThumb("assets/img/p_montania_001.jpeg"),
              ProfileThumb("assets/img/p_montania_002.jpg"),
              ProfileThumb("assets/img/p_cataratas_001.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}