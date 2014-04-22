// These are just dummy functions. 
// Please implement them.

// Hint:
// * Use copy_pixels_easy and copy_pixels_fast for inspiration
// * Use red() green() and blue() functions to get the pixel color components

PImage redVersion2(PImage img) {
  // get image dimensions
  int w = img.width, h = img.height;

  // create a target image
  PImage img2 = createImage(w, h, RGB);

  // tell the source image you are about to read pixels
  img.loadPixels();

  // let the pixel pushing begin!
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      img2.pixels[y * w +x] = color(red(img.pixels[y * w +x]), 0, 0);
    }
  }

  // tell the target image you are done writing pixels 
  img2.updatePixels();

  return img2;
}

PImage greenVersion2(PImage img) {
  // get image dimensions
  int w = img.width, h = img.height;

  // create a target image
  PImage img2 = createImage(w, h, RGB);

  // tell the source image you are about to read pixels
  img.loadPixels();

  // let the pixel pushing begin!
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
     img2.pixels[y * w +x] = color(0, green(img.pixels[y * w +x]), 0);
    }
  }

  // tell the target image you are done writing pixels 
  img2.updatePixels();

  return img2;
}

PImage blueVersion2(PImage img) {
  // get image dimensions
  int w = img.width, h = img.height;

  // create a target image
  PImage img2 = createImage(w, h, RGB);

  // tell the source image you are about to read pixels
  img.loadPixels();

  // let the pixel pushing begin!
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      img2.pixels[y * w +x] = color(0, 0, blue(img.pixels[y * w +x]));
    }
  }

  // tell the target image you are done writing pixels 
  img2.updatePixels();

  return img2;
}

