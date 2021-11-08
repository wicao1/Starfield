Particle [] starfieldBob = new Particle[1000];
void setup()
{
  size(300,300);
  noStroke();
  for(int i=0; i<starfieldBob.length; i++){
  starfieldBob[i] = new Particle();
  }
}

void draw()
{
  frameRate(10);
  for(int i=0; i<starfieldBob.length; i++){
    starfieldBob[i].move();
    starfieldBob[i].show();
    starfieldBob[0] = new OddBallParticle();
  }
  fill(255);
  rect(20,240,165,10);
  fill(0);
  text("click to see a sun explosion!",20,250);
}

void mousePressed(){
  for(int i=0; i<starfieldBob.length; i++){
    starfieldBob[i] = new Particle();
  }
  for(int i=0; i<starfieldBob.length; i++){
    starfieldBob[i].move();
    starfieldBob[i].show();
    starfieldBob[0] = new OddBallParticle();
  }
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
 
class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle(){
    myX = myY = 150;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*20+5;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}

class OddBallParticle extends Particle
{
  OddBallParticle(){
    myX = myY = 150;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*8;
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(255,255,0);
    ellipse((float)myX,(float)myY,50,50);
  }
}
