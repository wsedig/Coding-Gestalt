

void setup() {
  size(600, 600);
  background(0);
  noStroke();
}

void draw() {

  randomSeed(43);
  //mouseX = 75;

  background(0);
  int boxsize = (mouseX % 40) + 10;
 
  int ymax = width / boxsize + 1;
  int xmax = height / boxsize + 1;

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
    triangle (0, 0, 0, boxsize, boxsize, boxsize);
  } 
  else if ((val > 0.25) && (val < 0.5)) {
    triangle (0, 0, boxsize, boxsize, boxsize, 0);
  }
  else if ((val > 0.5) && (val < 0.75)) {
    triangle (0, 0, boxsize, 0, 0, boxsize);
  }
  else if ((val > 0.75) && (val < 1.0)) {
    triangle (boxsize, boxsize, 0, boxsize, boxsize, 0);
}

