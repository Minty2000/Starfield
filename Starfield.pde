Particles[] x = new Particles[500];

void setup() {
  size(500, 500);
  for (int i = 0; i < x.length; i++) {
    x[i] = new Particles();
  }
   for (int i = 499; i < x.length; i++) {
  x[i] = new object();
  }

}

void draw() {
  background(0);
  for (int i = 0; i < x.length; i++) {
    x[i].show();
    x[i].move();
  }

}
class object extends Particles{
  object(){
    myX = 250;
    myY = 250;
    mySpeed = Math.random()*20;
    myAngle = Math.random()*3*PI;
    mySize = 10;
    myHeight = 10;
    
    
  }
  void show(){
   fill(180,50,0);
   ellipse((float)myX,(float)myY,20,20);
  }
  void move(){
   myX = myX + (int)(Math.random()*9)-4;
   myY = myY + (int)(Math.random()*9)-4;
       if (myY > 500 || myX > 500 || myY < 0 || myX < 0) {
      myX = 250;
      myY = 250;
      myAngle = Math.random() * 2 * PI;
    }
  }
}
class Particles {
  double myX, myY, mySpeed, myAngle,mySize,myHeight;
//cosntructor
  Particles() {
    myX = 250;
    myY = 250;
    mySpeed = Math.random() * 10 + 2;
    myAngle = Math.random() * 2 * PI;
    mySize = 10;
    myHeight = 10;
  }

  void show() {
    float distance = dist((float) myX, (float) myY, 500/2 , 500/2);
    float maxDistance = dist(0, 0, 500 / 2, 500 / 2);
    float brightness = 255 * (distance / maxDistance); 
    
    fill(brightness);
     noStroke();
     ellipse((float) myX, (float) myY, (float)mySize, (float)myHeight);
    
  }

  void move() {
    myX = myX + (mySpeed * Math.cos(myAngle));
    myY = myY + (mySpeed * Math.sin(myAngle));
    if (myY > 500 || myX > 500 || myY < 0 || myX < 0) {
      myX = 250;
      myY = 250;
      myAngle = Math.random() * 2 * PI;
    }
  }
}

