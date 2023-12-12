class Tile {
  int value;
  bool merged;

  Tile(this.value) : merged = false;

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
    if (!merged && !otherTile.merged && otherTile.value == this.value) {
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
