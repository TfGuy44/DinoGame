class Dino {
  float baseY, px, py, vy, ay, w, h, speed;
  boolean canJump, isJumping;
  Dino(float lineY) {
    baseY = lineY;
    px = 100;
    py = baseY;
    vy = 0;
    ay = 0;
    h = 100;
    w = 50;
    speed = 0.001;
    canJump = true;
    isJumping = false;
  }
  void draw() {
    vy+=ay;
    py+=vy;
    landed_check();
    rect(px, py-h, w, h);
  }
  void jump(){
    if( canJump ){
      canJump = false;
      isJumping = true;
      vy = -10;
      ay = 0.32;
    }
  }
  void landed_check(){
    if( py >= baseY ){
      py = baseY;
      vy = 0;
      ay = 0;
      isJumping = false;
      canJump = true;
    }
  }
}
