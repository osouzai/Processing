float tri_height;
float tri_width;

void setup()
{
  size(800, 800);
}

void draw()
{
  background(162, 233, 235);
  
  tri_height = 50;
  tri_width = 50;
  boolean f01 = true;
  
  
  strokeWeight(3);
  fill(253, 182, 213);
  
  for(int i=0; i<=800; i+=tri_height)
  {
    for(int j=0; j<=800; j+=tri_width)
    {
      if(f01==true)
      {
        triangle(j, i, j-tri_width/2, i+tri_height, j+tri_width/2, i+tri_height);
      }
      else if(f01==false)
      {
        triangle(j-tri_width/2, i, j-tri_width/2-tri_width/2, i+tri_height, j+tri_width/2-tri_width/2, i+tri_height);
      }
      
    }
    
    f01=!f01;
  }
  
  save("texture.png");
}
