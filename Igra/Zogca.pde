class Zogca
{
PVector speed;
PVector location;
PVector gravity;
  Zogca()
  {
    println("Zogca nrjana");
    
  }
  
  void setZoga(boolean stran)
  {
    if(stran)
    {
      speed=new PVector(5,-5);
      location=new PVector(0,600);
      
      gravity=new PVector(0, 0.1);
    }
    
    else
    {
      speed=new PVector(-5,-5);
      location=new PVector(800,600);
      
      gravity=new PVector(0, 0.1);
    }
  
  }
  
  void narisiZogo()
  {
  fill(200,0,0);
  ellipse(location.x, location.y, 10,10);
  
  speed.add(gravity);
  location.add(speed);
  
  println("koordinate zoge:" +location.x +" "+location.y);
  }
  
  boolean outOfBounds()
  {
    if(location.x>800 || location.x<0)
      return true;  
    if(location.y>600)
      return true;
    return false;
  }
}
