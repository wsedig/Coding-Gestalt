// These are just dummy functions. 
// Please implement them.

// Hint:
// * Use copy_pixels_easy and copy_pixels_fast for inspiration
// * Use red() green() and blue() functions to get the pixel color components

PImage redVersion(PImage img) {
  // get image dimensions
  int w = img.width, h = img.height;

  // create a target image
  PImage img2 = createImage(w, h, RGB);

  // tell the source image you are about to read pixels
  img.loadPixels();

  // let the pixel pushing begin!
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int loc = x + y*w;
      float r = red(img.pixels[loc]);
      color c = color(r, 0, 0);
      img2.pixels[loc] = c;
    }
  }

  // tell the target image you are done writing pixels 
  img2.updatePixels();

  return img2;
}

PImage greenVersion(PImage img) {
  // get image dimensions
  int w = img.width, h = img.height;

  // create a target image
  PImage img2 = createImage(w, h, RGB);

  // tell the source image you are about to read pixels
  img.loadPixels();

  // let the pixel pushing begin!
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int loc = x + y*w;
      float g = green(img.pixels[loc]);
      color c = color(0, g, 0);
      img2.pixels[loc] = c;
    }
  }

  // tell the target image you are done writing pixels 
  img2.updatePixels();

  return img2;
}

PImage blueVersion(PImage img) {
  // get image dimensions
  int w = img.width, h = img.height;

  // create a target image
  PImage img2 = createImage(w, h, RGB);

  // tell the source image you are about to read pixels
  img.loadPixels();

  // let the pixel pushing begin!
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int loc = x + y*w;
      float b = blue(img.pixels[loc]);
      color c = color(0, 0, b);
      img2.pixels[loc] = c;
    }
  }

  // tell the target image you are done writing pixels 
  img2.updatePixels();

  return img2;
}

