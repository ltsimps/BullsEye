import "package:flutter/material.dart";

class Score extends StatelessWidget {
  final int totalScore;
  final int round;

  const Score({Key key, this.totalScore, this.round}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(onPressed: () {}, child: Text("Start")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Score"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$totalScore"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Round"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$round"),
          ),
          FlatButton(onPressed: () {}, child: Text("info"))
        ],
      ),
    );
  }
}
