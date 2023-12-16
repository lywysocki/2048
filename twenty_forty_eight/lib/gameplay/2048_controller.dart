import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:twenty_forty_eight/gameplay/tile.dart';

import 'game_board.dart';

class GameBoardController extends StateNotifier<GameBoard> {
  final StateNotifierProviderRef ref;
  late List<Tile> tiles;

  GameBoardController(this.ref) : super(GameBoard.newGame([])) {
    newGame();
  }

  GameBoard _newGame() {
    return GameBoard.newGame(tiles);
  }

  void newGame() {
    state = _newGame();
  }

  //move the tile in the direction
  bool move(SwipeDirection direction) {
    return false;
  }

  final gameBoardController =
      StateNotifierProvider<GameBoardController, GameBoard>((ref) {
    return GameBoardController(ref);
  });
}
