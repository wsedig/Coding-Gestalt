// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-12: Pixel neighbor differences (edges)

PImage img;         // Source image

void setup() {
  img = loadImage("silhoutte.png");
  size(img.width, img.height);
  
}

void draw() {
  
  // We are going to look at both image's pixels
  img.loadPixels();
  destination.loadPixels();
  
  // Since we are looking at left neighbors
  // We skip the first column
  for (int x = 1; x < width; x++ ) {
    for (int y = 0; y < height; y++ ) {
      
      // Pixel location and color
      int loc = x + y*img.width;
      color pix = img.pixels[loc];
      
      // Pixels to the left, center, and right - location and color
      int leftLoc = (x - 1) + y*img.width;
      color leftPix = img.pixels[leftLoc];
      int centerLoc = x + y*img.width;
      color centerPix = img.pixels[centerLoc];
      int rightLoc = (x - 1) + y*img.width;
      color rightPix = img.pixels[rightLoc];
      
      if(((leftPix =< 128) && (centerPix =< 128) && (rightPix => 128)) || ((leftPix => 128) && (centerPix =< 128) && (rightPix =< 128)){
        img.pixels[centerLoc] = color (255,255,255);
      } 
    }
  }
  
  // We changed the pixels in destination
  img.updatePixels();
  // Display the destination
  image(img,0,0);
}
