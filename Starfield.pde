Particle[] bob;
//your code here
void setup()
{
  background(0);
  size(500, 500);
  bob= new Particle[2000];
  for (int i = 0; i< bob.length; i++)
    {
      bob[i] = new Particle();
      bob[0] = new OddballParticle();
      bob[40] = new OddballParticle();
      bob[70] = new OddballParticle();
    }
  //your code here
}
void draw()
{
  background(0);
  for (int i =0; i<bob.length; i++) {
    bob[i].show();
    bob[i].move();
  }
  //your code here
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX=myY=250;
    mySpeed=Math.random()*15;
    myAngle=Math.random()*Math.PI*2;
    myColor=color(225,225,225);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 15, 15);
  }
  void move() {
    double lol = Math.cos(myAngle)*mySpeed;
    myX+=lol;
    double rip = Math.sin(myAngle)*mySpeed;
    myY+=rip;
  }
  //your code here
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle()
  {
    myX=myY=250;
    mySpeed=Math.random()*10;
    myAngle=Math.random()*Math.PI*2;
    myColor=color(255,225,225);
  }
  void show()
   {
     fill(myColor);
     rect((float)myX,(float)myY,70,70);
   }
  void move()
  {
     double hehe = Math.cos(myAngle)*mySpeed;
    myX+=hehe;
    double tea = Math.sin(myAngle)*mySpeed;
    myY+=tea;
  }
   
  //your code here
}