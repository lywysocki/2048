import 'tile.dart';

class gameBoard {
  final int score;
  final List<Tile> tiles;
  final bool over;
  final bool won;

  gameBoard(this.score, this.tiles, {this.over = false, this.won = false});

  //TODO: implement a method to create a new 2048 game
  void newGame() {}

  //TODO: this will probably be transfered to a frontend class - moves tile to new location
  void moveTo() {}

}