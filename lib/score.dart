import "package:flutter/material.dart";

class Score extends StatelessWidget {
  const Score({Key key}) : super(key: key);

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
            child: Text("9999"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Round"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("999"),
          ),
          FlatButton(onPressed: () {}, child: Text("info"))
        ],
      ),
    );
  }
}
