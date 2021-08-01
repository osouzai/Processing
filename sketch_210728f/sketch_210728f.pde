float time=0;
float num=0;
float arcs=0;
float add=0;

void setup()
{
  size(800, 800);
  background(128);
}

void draw()
{
  add=400/360.0;
  strokeWeight(3);
  noFill();
  stroke(255,50);
  arc(width/2, height/2, arcs+noise(time)*150, arcs+noise(time)*150, radians(time), radians(time+180), OPEN);
  stroke(0,50);
  arc(width/2, height/2, arcs+noise(time)*150, arcs+noise(time)*150, radians(time+180), radians(time+360), OPEN);
  arcs+=add;
  time+=1;
  
  /*if(time>360)
  {
    noLoop();
  }*/
  
  if(mousePressed)
  {
    save("vortex_noise.png");
  }
}
