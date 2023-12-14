import 'tile.dart';

class GameBoard {
  final List<Tile> tiles;
  final bool over;
  final bool won;

  GameBoard(this.tiles, {this.over = false, this.won = false});

  // model for new game
  GameBoard.newGame(this.tiles)
      : over = false,
        won = false;
}
