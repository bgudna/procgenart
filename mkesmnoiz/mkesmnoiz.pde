PVector[] punktar = new PVector[10];

void setup() {
  size(1200,600);
  
  for (int i = 0; i < punktar.length; i++) {
   punktar[i] = new PVector(random(width), random(height));  
  }
  
}

void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
      
            float[] distances = new float[punktar.length];
            for (int i = 0; i < punktar.length; i++) {
             float d = dist(x, y, punktar[i].x, punktar[i].y); 
             distances[i] = d;
            }
            int n = 0;
          float[] sorted = sort(distances);
          float noise = map(sorted[n], 0, width/4,100,0);
          int onePX = x + y * width;
          pixels[onePX] = color(noise);
          }
    }
  updatePixels();
  noLoop();
  
  for (PVector p : punktar) {
   stroke(153,245,254,15);
   strokeWeight(10);
   point(p.x,p.y);
  }
}
