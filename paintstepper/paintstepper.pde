class Stroller {
 int x;
 int y;
 
  Stroller() {
    x = width / 2;
    y = height / 2;
  }

  void showMe() {
    stroke(0);
    strokeWeight(3);
    point(x,y);
  }

  void stepper() {
    //int choice = int(random(4));
    
    float r = random(1);
    
    if (r < 0.4) {
      x++;
    } else if (r < 0.6) {
      x--;
    } else if (r < 0.8) {
      y++;
    } else {
      y--;
    }
  }

}

Stroller s;


void setup() {
  size(640,420);
  background(155); 
  s = new Stroller();
}

void draw() {
  s.showMe();
  s.stepper();
  
}
