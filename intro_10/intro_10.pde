PImage img;
int numDots = 100;
int total = 100000;
Dot [] d = new Dot [total];


void setup() {
  img = loadImage("color.jpg");
  size(564,752);
  for (int i=0; i < d.length; i++) {
    float xtmp = random(300,400);
    float ytmp = random(500,700);
    d[i] = new Dot(img,xtmp,ytmp);
  }
    
}

void draw() {
  background(0);
  for (int i=0; i < numDots; i++) {
    d[i].display();
    d[i].move();
  }
}

void mousePressed() {
  numDots -= 1;
}

void keyPressed() {
  numDots += 1;
}