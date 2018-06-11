size(800,800);
background(255);

loadPixels();
for (int x=0; x<width; x++) {
  for (int y=0; y<height; y++) {
    float d = dist(x,y,width,height/2);
    pixels[x+y*width] = color(d/10,random(10,100),d/7);
  }
}

updatePixels();