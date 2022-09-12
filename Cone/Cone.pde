int x = 0;

void setup()
{
  size(600,400,P3D);
  background(255);
}

void draw()
{
  lights();
  translate(300,200);
  
  
  if(x<360)
  {
  rotateY(radians(x));
  line(0,0,0 ,40,150,0);
  x=x+1;  
  
  }
}
