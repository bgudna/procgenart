//import processing.pdf.*;

void setup() {
  size(600,600);
  background(0);
 // beginRecord(PDF, "filename.pdf");

  for (int i = 1; i < 1000; i++) {

    IntList sequence = new IntList();
    int n = i;
    do {
      sequence.append(n);
      n = creatr(n);
      } while (n != 1);
      sequence.append(1);
      //sequence.reverse();
      
      float len = 20;
      //float angle = PI/7;
      float angle = 0.75;
      
      resetMatrix();
      translate(width/2, height/2);

   for (int j = 0; j < sequence.size(); j++) {
      int value = sequence.get(j); 
      
       if (value % 2 == 0) {
         rotate(angle);
         } else {
         rotate(-angle*10);
       }
      stroke(255,10);
      strokeWeight(2);
      line(0,0,len,0);
      translate(len, 0);
   }

}
 // endRecord();

}


void draw() {
  
}

int creatr(int n) {
 // even
  if (n % 2 == 0) {
   return n / 2;
    //odd
 } else {
   return (n * 3 + 1)/2;
 }
  
}
