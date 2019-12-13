Particle [] colony = new Particle[1000];
void setup()
{
  size(500,500);
  background(0);
  for(int i=0; i<colony.length; i++){
    colony[i] = new Particle(); 
    colony[0] = new OddballParticle();
  }
}
void draw()
{
  for(int i=0; i<colony.length; i++){
    colony[i].move();
    colony[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  
  } 
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse(250+(float)myX,250+(float)myY,5,5);
  }
}

class OddballParticle extends Particle
{
    OddballParticle()
    {
      myAngle = Math.random()*2*Math.PI;
      mySpeed = Math.random()*5;
      myColor = color(255,255,0);
    }
    void move()
    {
      myX = myX + (int)(Math.random()*7)-3;
      myY = myY + (int)(Math.random()*7)-3;
    }
    void show()
    {
      fill(myColor);
      rect(250+(float)myX, 250+(float)myY, 30,30);
    }
}

