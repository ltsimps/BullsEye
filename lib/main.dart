import 'package:bullseye/prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'control.dart';

void main() {
  runApp(BullsEyeApp());
}

class BullsEyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'BullsEye',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GamePage(
        title: 'BullsEye',
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  final String title;

  const GamePage({Key key, this.title}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Prompt(targetValue: 100),
              FlatButton(
                onPressed: () {
                  this._alertIsVisible = true;
                  _showAlert(context);
                  print(" You win ?");
                },
                child: Text(
                  'Hit Me!',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Control(),
            ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _showAlert(BuildContext context) {
    Widget okButton = FlatButton(
        child: Text('Awesome'),
        onPressed: () {
          Navigator.of(context).pop();
          this._alertIsVisible = false;
          print("Awesome Pressed!  $_alertIsVisible");
        });

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Hello There!"),
            content: Text("This is my first pop-up."),
            actions: <Widget>[
              okButton,
            ],
            elevation: 5,
          );
        });
  }
}
