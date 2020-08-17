void setup() {
  size(600,400);
  background(0);
}

int circleCount = 0;

void draw() {
  if(mousePressed == true) {
      circleCount++;
      circle(mouseX,mouseY,random(15,75));
      fill(random(0,255), random(0,255), random(0,255), random(15,75));
      noStroke();
  }
  
  for (int i = 0; i < circleCount; i++) {
    circle(random(10,590), random(10,390), random(10,45));
    fill(random(0,255), random(0,255), random(0,255), random(15,75));
    noStroke();
  }
}
