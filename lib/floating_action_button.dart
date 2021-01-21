import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool _pressed = false;
  void onPressedFav(){
    setState(() {
      _pressed = !this._pressed;
    });
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(this._pressed ? "Agregaste a tus favoritos" : "Eliminaste de tus favoritos"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}