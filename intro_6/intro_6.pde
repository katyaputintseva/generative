void setup(){
  size(800,800);
  background(255);
}

void draw() {
  loadPixels();
  for (int i = 0; i < pixels.length; i++){
    pixels[i] = color(random(255),0,random(255));
  }
  updatePixels();
}