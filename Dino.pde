class Dino {
  Dino() {
  }

  void updateRunter() {
    dinoY += 5;
    if (dinoY + dinoHeight >= lineY) {
      enable = false;
    }
  }

  void update() {
    dinoY -= 5;
  }

  void show() {
    rect(dinoX, dinoY, dinoWidth, dinoHeight);
  }
}
