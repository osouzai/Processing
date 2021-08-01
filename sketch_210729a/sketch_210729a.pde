float num;
float xpt;
float ypt;
float pt_add;
float elsize;
float inum;
float xamp;
float yamp;
boolean f01;

void setup()
{
  size(800, 800);
  background(255);
}

void draw()
{
  noLoop();
  ellipseMode(CENTER);
  noStroke();
  
  num = 2;
  pt_add = 800.0/(num*360);
  elsize = 20;
  inum = 20;
  xamp = 30;
  yamp = 30;
  f01 = true;
  
  for(int i=0; i<inum; i++)
  {
    if(f01==true)
    {
      fill(#FBC9FC, 30);
    }
    else if(f01==false)
    {
      fill(#D6EFFC, 30);
    }
    
    for(int j=0; j<num*360; j++)
    {
      xpt = cos(radians(j));
      ellipse(i*(800/(inum-1))+xpt*xamp, ypt, elsize, elsize);
      ypt+=pt_add;
    }
      
    ypt=0;
    f01=!f01;
  }
  
  for(int i=0; i<inum; i++)
  {
    if(f01==true)
    {
      fill(#FBC9FC, 30);
    }
    else if(f01==false)
    {
      fill(#D6EFFC, 30);
    }
    
    for(int j=0; j<num*360; j++)
    {
      ypt = sin(radians(j));
      ellipse(xpt, i*(800/(inum-1))+ypt*yamp, elsize, elsize);
      xpt+=pt_add;
    }
      
    xpt=0;
    f01=!f01;
  }
  
  save("pinkblue.png");
}
