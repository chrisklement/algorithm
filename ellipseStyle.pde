void koordinatenFestlegen() {
  int i = 0;
  while(i < x.length) {
    x[i] = random (0, width);
    y[i] = random (0, height);
    i = i + 1;
  }
}

void drawEllipse() {
  int i = 0;
  while(i < c.length) {
    fill(c[i]);
    i = i + 1;
  }
  
int z = 0;
  while(z < c.length) {
    stroke(c[z]);
    z = z + 1;
  }
  
  int j = 0;
  while(j < x.length) {
    float d = random(10, 100);
    d = d - 10;
    ellipse (x[j], y[j], d, d);
    j = j + 1;
  }
}


void verbindungenZeichnen() {
  int count = 0;
  int i = 0;
  while (i < x.length) {
    int j = 0;
    while (j < x.length) {
      float distance = dist(x[i], y[i], x[j], y[j]);
      if (distance < 200) {
        stroke (255, 40);
        strokeWeight (1);
        line(x[i], y[i], x[j], y[j]);
        count = count + 1;
      }
      j = j + 1;
    }
    i = i + 1;
  }
}

