import 'package:bullseye/game_model.dart';
import "package:flutter/material.dart";

class Control extends StatefulWidget {
  Control({Key key, @required this.model}) : super(key: key);
  final GameModel model;

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  double _currentValue = 20.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("1"),
        Expanded(
          child: Slider(
            value: _currentValue,
            onChanged: (newValue) {
              setState(() {
                _currentValue = newValue;
                widget.model.current = newValue.toInt();
              });
            },
            min: 1,
            max: 100,
          ),
        ),
        Text("100"),
      ],
    );
  }
}
