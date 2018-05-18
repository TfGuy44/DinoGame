float dinoX = 100;
float dinoY;
int dinoHeight = 100;
int dinoWidth = 50;
float dinoSpeed = 0.001;

float lineY;
int lines = 5;
int count;
boolean enable = false;
char input;

Dino[] dino = new Dino[1];

void drawGround() {
  float temp = lineY;
  stroke(0);
  fill(0);
  for (int i = 0; i < lines; i++) {
    line(0, temp, width, temp);
    temp++;
  }
}

void setup() {
  size(1000, 600);
  lineY = height * 0.80;
  dinoY = lineY - dinoHeight;
  dino[0] = new Dino();
}

void draw() {
  if (keyPressed) {
    input = key;
  }
  background(255);
  drawGround();
  if (input == ' ') {
    count++;
    dino[0].update();
    if (count >= 20) {
      input = 'o';
      enable = true;
    }
  }
  if (enable == true) {
    dino[0].updateRunter();
  }
  dino[0].show();
}
