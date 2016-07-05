void setup() {
  size(1000, 1000);
  colorMode(HSB, 100);
  noiseDetail(3, 0.7);
  float yoff = 0.0, yoff2 = 1000.0;
  for(int i = 0; i < height; i ++) {
    float xoff = 0.0, xoff2 = 1000.0;
    for(int j = 0; j < width; j ++) {
      //float noiMax = sqrt(map(noise(xoff2, yoff2), 0, 1, 100, 10000000));
      float noiMax = map(noise(xoff2, yoff2), 0, 1, 100, 5000);
      float noi = map(noise(xoff, yoff), 0, 1, 0, noiMax);
      float noiC = noi - floor(noi / 100) * 100;
      color c = color(noiC, 50, 100);
      set(i, j, c);
      xoff += 0.005;
      xoff2 += 0.0001;
    }
    yoff += 0.005;
    yoff2 += 0.0001;
  }
}
void draw() {};
void mouseClicked() {
  String filename = str(int(random(1000))) + ".jpg";
  save(filename);
}