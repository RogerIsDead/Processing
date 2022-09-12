float x[],y[],m[],n[];
float angle;
float tx,ty,rx,ry,a,b;
int i;



void setup() {
 size(800, 600);
 i = 0;
 x = new float[11];
 y = new float[11];
 m = new float[11];
 n = new float[11];
 
 angle = 50;
 tx = 100;
 ty = 0;
 rx = 1;
 ry = 1;
 a = 0;
 b = 0.5;
 
 x[0] = -5;  y[0] = 0;
 x[1] =  0;  y[1] = 0;
 x[2] =  50;  y[2] = -40;
 x[3] =  100;  y[3] = 0;
 x[4] =  105;  y[4] = 0;
 x[5] =  0;  y[5] = 75;
 x[6] =  100;  y[6] = 75;
 x[7] =  20;  y[7] = 75;
 x[8] =  20;  y[8] = 20;
 x[9] =  40;  y[9] = 20;
 x[10] =  40;  y[10] = 75;
 
 for(i = 0; i<x.length;i++)
{ 
  x[i] = x[i]+200;
  y[i] = y[i]+100;
}

}

void draw() {  
  background(200);
  //translate(400,300);
   


  
  arrayCopy(x,m);
  arrayCopy(y,n);

  
 //-----------translacao------------


   casa(x,y);
  
  i = 0;
  while(i<x.length)
  {   
  ////rotação
  //// x = x*cos(angle) - y*sin(angle)
  //m[i] = x[i]*cos(radians(angle)) - y[i]*sin(radians(angle));
  //// y = y*cos(angle) + x*sin(angle) 
  //n[i] = y[i]* cos(radians(angle)) + x[i]*sin(radians(angle));
  
  //reflexão
  m[i] = m[i]*rx;
  n[i] = n[i]*ry;
  
  //Cisalhamento
  m[i] = x[i] + a*y[i];
  n[i] = b*x[i] + y[i];
  
  //translacao
  m[i] = m[i]+tx;
  n[i] = n[i]+ty;
  
  i++;
  }
  casa(m,n);
}

void casa(float []x,float []y){
  //corpo
  beginShape(QUAD);
  stroke(0);
  fill(255,255,150);
  vertex(x[1],y[1]);
  vertex(x[3],y[3]);
  vertex(x[6],y[6]);
  vertex(x[5],y[5]);
  endShape();
  
  //porta
  beginShape(QUAD);
  stroke(0);
  fill(0);
  vertex(x[7],y[7]);
  vertex(x[8],y[8]);
  vertex(x[9],y[9]);
  vertex(x[10],y[10]);
  endShape();
  
  //teto
  beginShape(TRIANGLES);
  stroke(0);
  fill(255,100,32);
  vertex(x[0],y[0]);
  vertex(x[2],y[2]);
  vertex(x[4],y[4]);

  endShape();
  

}
