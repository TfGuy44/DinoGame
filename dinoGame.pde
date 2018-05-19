float lineY;
Dino dino;

void drawGround() {
  stroke(0);
  fill(0);
  rect(0, lineY, width, 5);
}

void setup() {
  size(1000, 600);
  lineY = 480;
  dino = new Dino(lineY);
}

void draw() {
  background(255);
  drawGround();
  dino.draw();
}

void keyPressed(){
  if(key == ' '){
    dino.jump();
  }
}
