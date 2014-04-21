
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration


PImage grayscale(PImage img) {
  Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]));
  }
  return Filter.end();
}

PImage threshold(PImage img, int threshold) {
  Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]) > threshold ? 255 : 0);
  }
  return Filter.end();
}

PImage dilate(PImage img, int steps) {
<<<<<<< HEAD
  int w = img.width, h = img.height;
  PImage img2 = createImage(w, h, RGB);
  img.loadPixels();
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      img2.pixels[y * w + x] = img.pixels[y * w + x];
      filter(DILATE);
    }
  }
  return img2;
}

PImage erode(PImage img, int steps) {
  int w = img.width, h = img.height;
  PImage img2 = createImage(w, h, RGB);
  img.loadPixels();
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      img2.pixels[y * w + x] = img.pixels[y * w + x];
      filter(ERODE);
    }
  }
  return img2;
=======
  Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(Filter.source[i]);
  }
  return Filter.end();
}

PImage erode(PImage img, int steps) {
  Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(Filter.source[i]);
  }
  return Filter.end();
>>>>>>> FETCH_HEAD
}





<<<<<<< HEAD
=======


>>>>>>> FETCH_HEAD
