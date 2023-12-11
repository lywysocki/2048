class Tile {
  int value;

  final int index;

  int row;
  int col;
  bool merged;

  Tile(this.value, this.index, {this.row = 0, this.col = 0}) : merged = false;

  void updateValue(int newValue) {
    value = newValue;
  }

  void markMerged() {
    merged = true;
  }

  void resetMerge() {
    merged = false;
  }

  void setPosition(int newRow, int newCol) {
    row = newRow;
    col = newCol;
  }

  List<int> getPosition() {
    return [row, col];
  }

  void mergeWith(Tile otherTile) {
    if (!otherTile.merged && otherTile.value == value) {
      value *= 2;
      otherTile.updateValue(0);
      markMerged();
    }
  }

  }
