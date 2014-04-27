//double check with posted versions.ghj
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
 Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(brightness(Filter.source[i]));
  }
  return Filter.end();
}

PImage erode(PImage in, int steps) {
 PImage out = in.get();
 
 int w = out.width;
 int h = out.height
 
 for(int i = 0; i < Filter.source.length; ++) {
   int x = i % w;
   int y = i / w;
   
   int xmin = max(0, x-1);
   int ymax = min(w - 1, x +1);
   
   //start with smallest possible value
   float maxval = 0;
   
   for(int y2 = ymin; y2 <ymax; y2++){
     for(int x2 = xmin; x2 < xmax; x2++) {
       
       maxval = max(maxval, brightness(filter.source[y2 * w +x2]));
     }
   }
   
   Filtertarget[i] = color(maxval);
  return Filter.end();
}

PImage erode(PImage img, int steps) {
 Filter.begin(img);
  for (int i = 0; i < Filter.source.length; i++) {
    Filter.target[i] = color(Filter.source[i]);
  }
  return Filter.end();
}
