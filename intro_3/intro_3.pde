int numBubbles = 200;
Bubble [] b = new Bubble [numBubbles];
int total = 0;

void setup() {
 size(800,800);
 for (int i=0; i < b.length; i++) {
   b[i] = new Bubble(random(width),random(height,100),random(1,50),(int) random(40,150),random(1, 5));
 }
}

void draw() {
  background(#00204a);
  for (int i=0; i < total; i++) {
   b[i].display();
   b[i].ascend();
   b[i].top();
 }
}

void mousePressed() {
  total += 1;
}
 
void keyPressed() {
  total -= 1;
}