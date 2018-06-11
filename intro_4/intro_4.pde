PImage bird;

void setup() {
  size(600,400);
  bird = loadImage("img.jpg");
}

void draw() {
  background(255);
  tint(mouseX,mouseY,255);
  image(bird,0,0,600,400);
}