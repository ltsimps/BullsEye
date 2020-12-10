import 'package:bullseye/textstyles.dart';
import "package:flutter/material.dart";

class Score extends StatelessWidget {
  final int totalScore;
  final int round;
  final VoidCallback onStartOver;

  const Score(
      {Key key, this.totalScore, this.round, @required this.onStartOver})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
              onPressed: () {
                onStartOver();
              },
              child: Text("Start Over")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Score",
              style: LabelTextStyle.bodyText1(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$totalScore",
              style: ScoreNumberTextStyle.headline4(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Round",
              style: LabelTextStyle.bodyText1(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$round",
              style: ScoreNumberTextStyle.headline4(context),
            ),
          ),
          FlatButton(onPressed: () {}, child: Text("info"))
        ],
      ),
    );
  }
}
