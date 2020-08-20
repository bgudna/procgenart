class Player {
 color c;
 float xpos;
 float ypos;
 float xspeed;
 
 Player(color shipColor, float tempXpos, float tempYpos, float tempSpeed) {
   c = shipColor; 
   xpos = tempXpos;
   ypos = tempYpos;
   xspeed = tempSpeed;
 }
  
 void display() {
   rectMode(CENTER);
   fill(c);
   rect(xpos, ypos, 30, 10);
 }
 
 void fly() {
   xpos = xpos + xspeed;
   if (xpos > width) {
     xpos = 0;
   }
 }
}
