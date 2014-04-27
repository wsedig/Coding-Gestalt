
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration

PImage flip2(PImage img) {
  PImage img2 = new PImage( img.width, img.height );
  for ( int i=0; i < img.width; i++ ) {
    for (int j=0; j < img.height; j++) {
     img2.pixels[y * w + x] = img.pixels[y * w +(w - x - 1)];
    }
  }
  return img2;
}

PImage flop2(PImage img) {
  PImage verticalMirror = new PImage( img.width, img.height );
  for ( int i=0; i < img.width; i++ ) {
    for (int j=0; j < img.height; j++) {
      int yfromthetop = (h - y - 1);
       img2.pixels[y * w + x] = img.pixels[yfromthetop * w + x];
    }
  }
  return verticalMirror2;
}


