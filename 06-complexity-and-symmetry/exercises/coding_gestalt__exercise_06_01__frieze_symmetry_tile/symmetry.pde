

PMatrix getSymmetry(int symmetry, int idx) {

  // translate in x direction
  PMatrix t = new PMatrix2D(1, 0, 1, 0, 1, 0);
  PMatrix m = new PMatrix2D();

  switch(symmetry) {

  case 1: 
    // Unit matrix
    m.set(1, 0, 0, 0, 1, 0);
    break;

  case 2:
    m.set(-1, 0, 1, 0, 1, 0);
    break;

  case 3:
    m.set(1, 0, 0, 0, -1, 1);
    break;

  case 4:
    m.set(1, 0, 0, 0, 1, -1);
    break;

  case 5:
    m.set(1, 0, 0, 0, -1, 1);
    break;

  case 6:
    m.set(1, 0, 0, 0, -1, 1);
    break;

  case 7:
    m.set(1, 0, 0, 0, -1, 1);
    break;
  }

  PMatrix m0 = pow(m, idx);
  PMatrix t0 = pow(t, idx);

  t0.apply(m0);
  return t0;
}


// power function for matrices ( m * m * m ... )
PMatrix pow(PMatrix m, int n) {
  PMatrix m0 = new PMatrix2D();
  for (int i = 0; i < n; i++) {
    m0.apply(m);
  }
  return m0;
}

