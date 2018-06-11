PImage img;

void setup() {
  img = loadImage("color.jpg");
  println(img.width,' ',img.height);
  size(564,752);
  background(255);
}

void draw() {
  loadPixels();
  img.loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x+y*width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      float d = dist(x,y,mouseX,mouseY);
      if (d > 100) {
        pixels[loc] = color(g*1.1,r+random(100),b+random(100));
      }
      else {
        pixels[loc] = color(r,g,b);
      }
    }
  }
  updatePixels();
}