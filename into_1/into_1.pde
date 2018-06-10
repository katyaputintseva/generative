void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  
  line(pmouseX,pmouseY,mouseX,mouseY);
  stroke(0,mouseY/2,mouseX/2);
  strokeWeight((mouseX+mouseY)/20);
  
}

void mousePressed() {
  background(0,mouseY/2,mouseX/2);

}