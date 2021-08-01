float num;
float arcs;
boolean f01;
float time=0;

void setup()
{
  size(800, 800);
  background(255);
  frameRate(24);
}

void draw()
{
  noFill();
  float add = 80/360.0;
  float arcs=0;
  float num=0;
  strokeWeight(5);
  stroke(175, 230, 230);
  f01 = true;
  
  for(int i=0; i<10; i++)
  {
    for(int j=0; j<11; j++)
    {
      arcs=0;
      //num=random(0, 360); //randomize;
      println(num);
      
      for(int k=0; k<360; k++)
      {
        if(f01==true)
        {
          arc(j*80+40, i*80+40, arcs, arcs, radians(k+num), radians(k+180+num), OPEN);
        }
        else if(f01==false)
        {
          arc(j*80, i*80+40, arcs, arcs, radians(k+num), radians(k+180+num), OPEN);
        }
        
        arcs+=add;
      }
    }
    
    f01=!f01;
  }
  
  
  save("texture.png");
}
