Player playerOne;
Enemy e;

void setup() {
  playerOne = new Player(color(255,0,0), width/2, height/2, 2);
  e = new Enemy(color(random(255)), width/4, height/4);
  size(800,400);
}


void draw() {
  background(0);
  playerOne.fly();
  playerOne.display();
  
  if (frameCount%20 == 0) {
    e.shoot();
    print(frameCount);
    println(" shot");
  }
  e.moveBullets();
  e.display();

}
