import "package:flutter/material.dart";

class Control extends StatefulWidget {
  Control({Key key}) : super(key: key);

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  double _currentValue = 50.0;

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
