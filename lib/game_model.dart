class GameModel {
  static const SLIDER_START = 50;
  static const SCORE_START = 0;
  static const ROUND_START = 1;

  GameModel([this.target, this.current, this.totalScore, this.round]);

  int target;
  int current;
  int totalScore;
  int round;
}
