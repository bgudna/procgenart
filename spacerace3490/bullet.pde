class Bullet { 
  float posX, posY;
  float dirX;
  float dirY;

  Bullet (float x, float y, 
    float dx, float dy) {
    posX = x;
    posY = y;
    dirX = dx;
    dirY = dy;
  }

  void display() {
    ellipse(posX, posY, 
      3, 3);
  }

  void move() {
    posX += dirX;
    posY += dirY;
  }
}
