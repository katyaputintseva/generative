Walker_prob w;

void setup() {
  size(800,600);
  w = new Walker_prob();
  background(255);
}

void draw() {
  w.step();
  w.render();
}