void setup()
{ 
  size(800,600);
  fill(200);
  background(100);
  
  rectMode(CENTER);
  noStroke();
}

Top top1=new Top();

float angle1, angle2=PI/5;

void draw()
{
  background(100);
  narisiPolkrog();
  
  if(keyPressed)
  {
    if(key=='w')
      angle1+=0.05;
    
    if(key=='s')
      angle1-=0.05;
  }
  
  if(keyPressed)
  {
    if(keyCode==UP)
      angle2+=0.05;
    
    if(keyCode==DOWN)
      angle2-=0.05;
  }
  
  rectMode(CENTER);
  top1.update(angle1, 0 height)
  
}

void narisiPolkrog()
{
  fill(200);
  float r=100;
  
  ellipse(r/2, height, r, r);
}


class Top
{
  Top()
  {
    println("Top ustvarjen");
  }
  
  
  void update(float angle, float x, float y)
  {
    rectMode(CENTER);
    fill(200);
    rotate(angle);
    rect(x,y,120,60);
  }
}
