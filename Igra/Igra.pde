
Top top=new Top();
Zogca zogica=new Zogca();
Kos kos=new Kos();

float angle1=PI/4+PI/2;
float angle2=PI/4;
float r=100;

float score1, score2;

boolean strel_leva=false;
boolean strel_desna=false;

void setup()
{ 
  size(800,600);
  fill(200);
  background(100);
  
  rectMode(CENTER);
  noStroke();
  frameRate(60);
}


void draw()
{
  fill(200);
  background(100);
  rectMode(CENTER);
  narisiPolkrog();
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
      strel_leva=true;
   
    if(key=='j')
      strel_desna=true;
   
    top.narisiOba(angle1, angle2);
  }//konec if(keypressed)
  
  if(strel_leva)
  {
    strel_leva();
  }
  
  if(strel_desna)
  {
    strel_desna();
  }
  
  
  
  
}

void narisiPolkrog()
{
  fill(200);
  ellipse(0, height, r, r);
  ellipse(width, height, r, r);
}

void strel_desna()
{
    fill(200);
    zogica.setZoga(false);
    println("nastimalo zogo na desni");
  
    
    while(!zogica.outOfBounds())
    { 
       //background(100);
       narisiPolkrog();
       top.narisiOba(angle1, angle2);
       zogica.narisiZogo();
       
    }
     strel_desna=false;
}

void strel_leva()
{
    fill(200);
    zogica.setZoga(true);
    println("nastimalo zogo na levi");
    
    
    while(!zogica.outOfBounds())
    { 
       //background(100);
       narisiPolkrog();
       top.narisiOba(angle1, angle2);
       zogica.narisiZogo();
       
     }
     strel_leva=false;

}
