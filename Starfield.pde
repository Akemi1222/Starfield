Particle[] particle=new Particle[1500];
void setup(){
  size(500,500);
  for (int i=0;i<particle.length;i++) particle[i]=new Particle();
  particle[0]=new OddballParticle();
}
void draw(){
  background(0);
  for (int i=0;i<particle.length;i++){
    particle[i].move();
    particle[i].show();
  }
}

class Particle{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle(){
    myX=myY=250;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,5,5);
  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX=myY=235;
    myColor=color(0,255,0);
  }
  void move(){
    myX+=(int)(Math.random()*3)-1;
    myY+=(int)(Math.random()*3)-1;
  }
  void show(){
    noStroke();
    fill(myColor);
    rect((float)myX,(float)myY,40,40);
  }
}
