
Top top=new Top();
Zogca zogica=new Zogca();
Kos kos=new Kos();

float angle1=-PI/4;
float angle2=PI/4;
float r=100;

float score1, score2;

boolean strel=false;


void setup()
{ 
  size(800,600);
  fill(200);
  background(100);
  
  rectMode(CENTER);
  noStroke();
  //frameRate(60);
  
}


void draw()
{
  fill(200);
  background(100);
  rectMode(CENTER);
  narisiPolkrog();
  println("sm narisalu polkrog");
  top.narisiOba(angle1, angle2);
  
  
  if(keyPressed)
  {
    background(100);
    narisiPolkrog();
    
    
    if(key=='s')
      angle1+=0.05;
      
    if(key=='w')    
      angle1-=0.05;
      
    if(key=='i')
      angle2+=0.05;
    
    if(key=='k')
      angle2-=0.05;
      
    if(key=='d')
    {
      zogica.setZoga(true, angle1, 10);
      strel=true;
    }
      
   
    if(key=='j')
    {
      zogica.setZoga(false, angle2, 10);
      strel=true;
    }
   
    top.narisiOba(angle1, angle2);
  }//konec if(keypressed) 
  if(strel)
  {
    zogica.narisiZogo();
    if(zogica.outOfBounds())
    {
      strel=false;
    }
  }
  
  
  
}

void narisiPolkrog()
{
  fill(200);
  ellipse(0, height, r, r);
  ellipse(width, height, r, r);
}
