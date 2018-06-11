class Dot {
  float x;
  float y;
  color c;
  float xspeed;
  float yspeed;
  float D;
  
  Dot(PImage img, float xtmp, float ytmp) {
    x = xtmp;
    y = ytmp;
    c = img.get(int(x),int(y));
    xspeed = random(-1,1);
    yspeed = random(-1,1);
    D = 10;
  }
  
  void display() {
    fill(c,150);
    noStroke();
    ellipse(x,y,D,D);
  }
  
  void move(){
    if ((x>width)||(x<0)) {
      xspeed*=-1;
      yspeed*=-1;
    }
    x+=xspeed;
    if ((y<0)||(y>height)){
      xspeed*=-1;
      yspeed*=-1;
    }
    y+=yspeed;
  }
 
}