float x = 0;

void setup()
{
  size(600,400,P3D);
  background(255);
}

void draw()
{
  lights();
  translate(300,300);
  rotateX(radians(15));
  //"chao"
  beginShape(QUAD);
    fill(#F7740F);
    vertex(-100,0,-100);
    vertex(100,0,-100);
    vertex(100,0,100);
    vertex(-100,0,100);
  endShape();
  
  //-------AQUI JA SAI MONTADO---- **pra funcionar comentar o if e descomentar esse**
  //for(x=0;x<360;x=x+0.1)
  //{
  //rotateY(radians(x));
    //beginShape();
    //  noFill();
    //  vertex(0,0,0);
    //  bezierVertex(35,0,0, 40,-40,0, 20,-60,0);
    //  bezierVertex(10,-80,0, 10,-90,0, 30,-100,0);
    //endShape();   
  //}
  
  if(x<360)
  {
  rotateY(radians(x));
   beginShape();
    noFill();
    vertex(0,0,0);
    bezierVertex(35,0,0, 40,-40,0, 20,-60,0);
    bezierVertex(10,-80,0, 10,-90,0, 30,-100,0);
  endShape();
  x=x+1;  
  }

}
