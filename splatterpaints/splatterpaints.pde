float generator;

void setup() {
  size(600,400);
  generator = random(15000);
  
}

void draw() {
  float num = (float)generator.nextGaussian();
}
