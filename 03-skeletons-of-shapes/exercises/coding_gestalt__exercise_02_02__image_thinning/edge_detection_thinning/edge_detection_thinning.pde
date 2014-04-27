// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-12: Pixel neighbor differences (edges)

PImage source;         // Source image
PImage destination; //destingation image

void setup() {
  source = loadImage("silhoutte.png");
  destination = loadImage("silhoutte.png");
  size(source.width, source.height);
}

void draw() {

  float threshold = 127;

  //update source image with changes from destination image
  //source = destination;

  // We are going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();

  // Since we are looking at left neighbors
  // We skip the first 2 columns
  for (int y = 0; y < height; y++ ) {
    for (int x = 1; x < width - 2; x++ ) {
 
      // Pixels to the left, center, and right - location and color
      int leftLoc = (x - 1) + y*source.width;
      int centerLoc = x + y*source.width;
      int rightLoc = (x + 1) + y*source.width;

      // Brightness of pixels
      float leftBright = brightness(source.pixels[leftLoc]);
      float centerBright = brightness(source.pixels[centerLoc]);
      float rightBright = brightness(source.pixels[rightLoc]);

     /* if ((leftBright < threshold) && (centerBright < threshold) && (rightBright > threshold)) {
        destination.pixels[centerLoc] = color (255);
      }*/
      if ((leftBright < threshold) && (rightBright > threshold)) {
        destination.pixels[centerLoc] = color (255);
      }
    }
  }

  // We changed the pixels in destination
  destination.updatePixels();
  source.pixels = destination.pixels;
  source.updatePixels();
  // Display the destination
  image(source, 0, 0);
}

