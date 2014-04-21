
// These are just dummy functions. 
// Please implement them.

// Hint:
// Use copy_pixels_easy and copy_pixels_fast for inspiration

PImage flip(PImage img) {
  PImage horizontalMirror = new PImage( img.width, img.height );
  for ( int i=0; i < img.width; i++ ) {
    for (int j=0; j < img.height; j++) {
      horizontalMirror.set( img.width - 1 - i, j, img.get(i, j) );
    }
  }
  return horizontalMirror;
}

PImage flop(PImage img) {
  PImage verticalMirror = new PImage( img.width, img.height );
  for ( int i=0; i < img.width; i++ ) {
    for (int j=0; j < img.height; j++) {
      verticalMirror.set(i, img.height - 1 - j, img.get(i, j) );
    }
  }
  return verticalMirror;
}





