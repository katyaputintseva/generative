float circleX;
float circleY;
boolean going;
float xspeed = 10;
float yspeed = 3;

void setup() {
  size(600,600);
  circleX=0;
  circleY=height/2;
}

void draw() {
  //circleX=random(width);
  //circleY=random(height);
  background(255);
  noStroke();
  ellipse(circleX, circleY, 40, 40);
  fill(#FD9304,100);
  if (going) {
    circleX+=xspeed;
    circleY+=yspeed;
  }
  if ((circleX > width) || (circleX < 0)) {
    xspeed *= -1;
    yspeed *= -1;
  }
}


void mousePressed() {
  going = !going;
}