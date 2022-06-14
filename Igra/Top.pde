class Top
{
  Top()
  {
    println("Top ustvarjen");
  }
  
  void narisiOba(float angle1, float angle2)
  {
    rectMode(CENTER);
    fill(200);

    pushMatrix();
    translate(0, height);
    rotate(angle1);
    rect(0,0, 300,30);
    popMatrix();
    
    
    
  
    pushMatrix();
    translate(width, height);
    rotate(angle2);
    rect(0,0, 300,30);
    popMatrix();
    
   
    
  }
  
  
  void updateTop1(float angle, float x, float y)
  {    
    println("prslu sm u metodo top 1");

    rectMode(CENTER);
    fill(200);
    translate(0, height);
    
    pushMatrix();
    rotate(angle);
    rect(x,y,300,30);
    popMatrix();
  }
  
  void updateTop2(float angle, float x, float y)
  {
    println("prslu sm u metodo top 2");

    rectMode(CENTER);
    fill(200);
    translate(width, height);
    
    pushMatrix();
    rotate(angle);
    rect(x,y,300,30);
    popMatrix();
  }
  
}
