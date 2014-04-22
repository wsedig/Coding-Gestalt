// Declaring a variable of type PImage
PImage img;  

void setup() {
  size(400,400);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("silhoutte.png");
}

void draw() {
  background(0);
  // Draw the image to the screen at coordinate (0,0)
  image(img,0,0);
}
