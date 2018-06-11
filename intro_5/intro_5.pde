PImage jump;
Bubble [] b = new Bubble [100];
int total = 0;

void setup() {
  size(800,800);
  jump = loadImage("jump.png");
  for (int i=0; i < b.length; i++) {
    b[i] = new Bubble(random(width),random(height,100),random(1,100),(int) random(40,150),random(1, 5));
  }
}

void draw() {
  background(255);
  for (int i=0; i < total; i++) {
    b[i].display();
    b[i].ascend();
    b[i].top();
  }
}

void mousePressed() {
  total += 1;
}