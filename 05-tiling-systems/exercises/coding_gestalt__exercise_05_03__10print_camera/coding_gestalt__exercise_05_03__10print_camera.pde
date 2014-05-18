///////////////////////////////////////////////////
//                                               //
//  CODING GESTALT  -   GESTALTING CODE          //
//  Lecture 05      -   Exercise 02              //
//                                               //
///////////////////////////////////////////////////
//                                               //
//                                               //
//               10 PRINT CAMERA                 //
//                                               //
//                                               //
///////////////////////////////////////////////////

// (c) YOUR_NAME at Bauhaus-Uni Weimar

// play with this, get the triangle tiling system working

import processing.video.Capture;
Capture cam;

int boxsize = 100;
int cameraWidth = 320;
int cameraHeight = 240;

void setup() {
  size(600, 600);
  stroke(200);

  cam = new Capture(this, 320, 320);
  cam.start();

  int cameraWidth = cam.width;
  int cameraHeight = cam.height;
}


void draw() {

  background(0);
  randomSeed(0);


  int ymax = width / boxsize + 1;
  int xmax = height / boxsize + 1;
  noStroke();


  for (int y = 0; y < ymax; y++) {
    for (int x = 0; x < xmax; x++) {
      pushMatrix();
      translate(x * boxsize, y * boxsize);
      element(boxsize, random(1));
      popMatrix();
    }
  }
}


void element(int boxsize, float val) {
  if (val < 0.25) {
    pushMatrix();
    rotate(radians(45));
    copy(cam.get(), cameraWidth/2 - boxsize/2, cameraHeight/2 - boxsize/2, cameraWidth/2 + boxsize/2, cameraHeight/2 + boxsize/2, 0, 0, boxsize, boxsize );
    popMatrix();
  } 
  else if ((val > 0.25) && (val < 0.5)) {
    pushMatrix();
    rotate(radians(135));
    copy(cam.get(), cameraWidth/2 - boxsize/2, cameraHeight/2 - boxsize/2, cameraWidth/2 + boxsize/2, cameraHeight/2 + boxsize/2, 0, 0, boxsize, boxsize );
    popMatrix();
  }
  else if ((val > 0.5) && (val < 0.75)) {
    pushMatrix();
    rotate(radians(225));
    copy(cam.get(), cameraWidth/2 - boxsize/2, cameraHeight/2 - boxsize/2, cameraWidth/2 + boxsize/2, cameraHeight/2 + boxsize/2, 0, 0, boxsize, boxsize );
    popMatrix();
  }
  else if (val > 0.25) {
    pushMatrix();
    rotate(radians(315));
    copy(cam.get(), cameraWidth/2 - boxsize/2, cameraHeight/2 - boxsize/2, cameraWidth/2 + boxsize/2, cameraHeight/2 + boxsize/2, 0, 0, boxsize, boxsize );
    popMatrix();
  }
}


// read a new frame when it's available
void captureEvent(Capture c) {
  c.read();
}

