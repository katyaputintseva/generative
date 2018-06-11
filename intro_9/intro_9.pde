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
  for (int x = 0; x < width-1; x++) {
    for (int y = 0; y < height; y++) {
      int loc1 = x+y*width;
      int loc2 = x+1+y*width;
      float b1 = brightness(img.pixels[loc1]);
      float b2 = brightness(img.pixels[loc2]);
      float diff = abs(b1-b2)+random(100);
      pixels[loc1] = color(diff);
      
    }
  }
  updatePixels();
}