float[] x = new float[20];
float[] y = new float[20];
color[] c = new color[100];

void setup() {
  size(860, 600);
  noLoop();
  koordinatenFestlegen();
  
  for (int i = 0; i < c.length; i++) {
    c[i] = color (96, 109, 128, random(10, 255));
  }
  
  for (int z = 0; z < c.length; z++) {
    c[z] = color (50, 60, 80, random(100, 255));
  }
}

void draw () {
  background(191, 196, 200);
  ellipseRandom();
  verbindungenZeichnen();
}
