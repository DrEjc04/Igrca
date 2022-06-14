class Kos
{
  
  Kos()
  {
    println("kos ustvarjen");
  }
  
  void narisiKos(boolean stran)
  {
    if(stran)
      rect(random(50,400), random(50,400), 5, 40);
    
    else
      rect(random(400, 750), random(50, 400), 5, 40);
  }
  
}
