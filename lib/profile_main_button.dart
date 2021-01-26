import 'package:flutter/material.dart';

class ProfileMainButton extends StatefulWidget{
  IconData _icon = Icons.add as IconData;
  bool _active;
  bool _selected;
  String _action;

  ProfileMainButton(this._action, this._icon, this._active, this._selected);
  @override
  State<StatefulWidget> createState() => _ProfileMainButton(this._action, this._icon, this._active, this._selected);
}

class _ProfileMainButton extends State<ProfileMainButton>{
  IconData _icon = Icons.add as IconData;
  bool _active;
  bool _selected;
  String _action;

  _ProfileMainButton(this._action, this._icon, this._active, this._selected);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      tooltip: _action,
      mini: !_selected,
      backgroundColor: this._active ? Colors.white : Colors.grey,
      child: Icon(
        _icon,
        color: this._active ? Colors.indigo : Colors.blueGrey,
      ),
      onPressed: () => {
        if (_active) {
          Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(_action),
              )
          )
        }
      },
    );
  }
}