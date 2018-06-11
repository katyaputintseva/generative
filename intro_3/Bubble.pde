class Bubble {
  
  float x;
  float y;
  float D;
  int col;
  float speed;
  
  Bubble(float tempx, float tempy, float tempdiam, int tempcol, float tempspeed) {
    x = tempx;
    y = height;
    D = tempdiam;
    col = tempcol;
    speed = tempspeed;
  }
 
  void display(){
    fill(255,col);
    noStroke();
    ellipse(x,y,D,D);
  }
  
  void ascend() {
    y-=speed;
    x+=random(-1,1);
  }
  
  void descend() {
    y+=speed;
    x+=random(-2,2);
  }
  
  void top() {
    if (y < D/2) y = D/2;
  }
  
  public void mousePressed() {
    x = random(width);
    y = height;
  }
}