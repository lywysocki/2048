class Tile {
  int value;
  bool merged;
  final int index;
  final int? nextIndex;

  Tile(this.value, this.index, {this.nextIndex, this.merged = false});

  void updateValue(int newValue) {
    value = newValue;
  }

  void markMerged() {
    merged = true;
  }

  void resetMerge() {
    merged = false;
  }

  bool isEmpty() => value == 0;

  bool mergeWith(Tile otherTile) {
    if (!merged && !otherTile.merged && otherTile.value == value) {
      value *= 2;
      otherTile.updateValue(0);
      otherTile.merged = false;
      markMerged();
      return true;
    }
    return false;
  }

  static void swapTiles({required Tile t1, required Tile t2}) {
    Tile tempT = t1;
    t1 = t2;
    t2 = tempT;
  }
}
