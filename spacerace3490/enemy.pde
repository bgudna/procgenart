class Enemy {

  final float BULLET_SPEED = 0.8;

  final float ANGLE_INCREMENT = PI/10; 
  //2PI would only shoot down, PI is up down, 
  //halfPi is in 4 dirs and so on
  //you can also just use some random number like 0.3256
  //but try keeping it within 0-2PI

  float posX, posY;
  color c;

  Bullet[] bullets; //might want to use a list (ArrayList)

  Enemy (color enemyColor, float x, float y) {
    c = enemyColor;
    posX = x;
    posY = y;

    bullets = new Bullet[0];
  }

  void display() {
    ellipse(posX, posY, 
      10, 10);
      fill(c);

    for (int i = 0; i < bullets.length; i++) {
      bullets[i].display();
    }
    
     posX += 1.1; //  0.1
     if (posX > width) {
       posX = 0;
     }
  }

  void shoot() {
    Bullet newBullet = new Bullet(
      posX, posY, 
      cos(bullets.length*ANGLE_INCREMENT)*BULLET_SPEED, sin(bullets.length*ANGLE_INCREMENT)*BULLET_SPEED);
    // append it
    bullets = (Bullet[]) append(bullets, newBullet);
  }

  void moveBullets() {
    for (int i = 0; i < bullets.length; i++) {
      bullets[i].move();
    }
  }
  
}
