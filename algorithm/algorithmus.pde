float[] x = new float[60]; // change number of ellipse
float[] y = new float[60]; // y must be the same like x
float[] z = new float[4];  // change number of inner ellipse
float[] d = new float[200];  // set distance line

// window setups
void setup() {
  size(860, 600);
  noLoop();
  cordinations();
}

// draw setups
void draw () {
  background(191, 196, 200);
  ellipseRandom();
  connections();
}

//Functions

// set cordination of ellipse by random
void cordinations() {
  for (int i = 0; i < x.length; i++) {
    x[i] = random (0, width);
    y[i] = random (0, height);
  }
}

// draw main ellipse
void drawEllipse() {
  for (int i = 0; i < x.length; i++) {
    fill (96, 109, 128, random(10, 255));
    noStroke();
    float d = random(10, 150);
    d = d - 10;
    ellipse (x[i], y[i], d, d);
  }
}

// number of inner ellipse
void ellipseRandom() {
  for (int i = 0; i < z.length; i++) {
    drawEllipse();
  } 
}

// set connections of ellipse by distance setting
void connections() {
  for (int i = 0; i < x.length; i++) {
    for (int j = 0; j < x.length; j++) {
      float distance = dist(x[i], y[i], x[j], y[j]);
      if (distance < d.length) {
        stroke (255, 40);
        strokeWeight (1);
        line(x[i], y[i], x[j], y[j]);
      }
    }
  }
}

// save pictures
void keyPressed () {
  if (key == 's') {
    save ("grafik.png");
  }
}
