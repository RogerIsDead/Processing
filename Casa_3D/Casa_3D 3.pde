float tx,ty,tz,angx,angy,angz,ex,ey,ez;
int i;
float x[],y[],z[],a[],b[],c[];

void setup(){
  size(800,600,P3D);
  i = 0;

 x = new float[21];
 y = new float[21];
 z = new float[21];
 a = new float[21];
 b = new float[21];
 c = new float[21];
 
 
 x[0] = 0;  y[0] = 0;  z[0] = 0;
 x[1] =  200;  y[1] = 0;  z[1] = 0;
 x[2] =  200;  y[2] = -0;  z[2] = -100;
 x[3] =  0;  y[3] = 0;  z[3] = -100;
 x[4] =  100;  y[4] = -50;  z[4] = -50;
 
 x[5] =  5;  y[5] = 0;  z[5] = -5;
 x[6] =  195;  y[6] = 0;  z[6] = -5;
 x[7] =  195;  y[7] = 0;  z[7]= -95;
 x[8] =  5;  y[8] = 0;  z[8] = -95;
 x[9] =  5;  y[9] = 100;  z[9] = -5;
 x[10] =  195;  y[10] = 100;  z[10] = -5;
 x[11] = 195;  y[11] = 100;  z[11] = -95;
 x[12] =  5;  y[12] = 100;  z[12] = -95;
 
 x[13] =  25;  y[13] = 100;  z[13] = 0;
 x[14] =  75;  y[14] = 100;  z[14] = 0;
 x[15] =  25;  y[15] = 25;  z[15] = 0;
 x[16] =  75;  y[16] = 25;  z[16] = 0;
 
 x[17] =  80;  y[17] = 75;  z[17] = 0;
 x[18] =  125;  y[18] = 75;  z[18] = 0;
 x[19] =  125;  y[19] = 25;  z[19] = 0;
 x[20] =  80;  y[20] = 25;  z[20] = 0;

  angx = 0;
  angy = 10;
  angz = 0;
  
  //ex = 1;
  //ey = 1;
  //ez = 1;
  
  tx = 100;
  ty = 200;
  tz = 0;
 
}



void draw(){
  background(255);
  
   arrayCopy(x,a);
   arrayCopy(y,b);
   arrayCopy(z,c);


for(i = 0; i<x.length;i++)
{
  //rotacao X ]x = x[
  //b[i] = y[i]*cos(radians(angx)) - z[i]*sin(radians(angx));
  //c[i] = y[i]*sin(radians(angx)) + z[i]*cos(radians(angx));
  
  //-----------rotacao Y-----------
  a[i] = x[i]*cos(radians(angy)) + z[i]*sin(radians(angy));
  c[i] =z[i]*cos(radians(angy)) - x[i]*sin(radians(angy));
  
  ////rotacao Z
  //a[i] = x[i]*cos(radians(angz)) - y[i]*sin(radians(angz));
  //b[i] = x[i]*sin(radians(angz)) + y[i]*cos(radians(angz));
  
  //--------Escala------------
  a[i] = a[i]*1;
  b[i] = b[i]*1;
  c[i] = c[i]*1;
  

  
}


lights();
  //translate(100,200,0);
  //------translacao----------
 for(i = 0; i<x.length;i++)
{ 
  a[i] = a[i]+tx;
  b[i] = b[i]+ty;
  c[i] = c[i]+tz;
}
 stroke(0);
 //Casa(a,b,c);
 //translate(200,0,0); 
 //translacao 
 for(i = 0; i<x.length;i++)
{ 
  a[i] = a[i]+200;
  b[i] = b[i]+0;
  c[i] = c[i]+0;
}
 Casa(a,b,c);

angy++;

}


void Casa(float []x,float[]y,float[]z)
{
 // Teto
 beginShape(TRIANGLE); 
 //frente
 fill(#310A0A);
 vertex(x[0],y[0],z[0]);
 vertex(x[1],y[1],z[1]);
 vertex(x[4],y[4],z[4]);
 //esquerda
 vertex(x[0],y[0],z[0]);
 vertex(x[3],y[3],z[3]);
 vertex(x[4],y[4],z[4]);
 //direita
 fill(255,150,32);
 vertex(x[2],y[2],z[2]);
 vertex(x[1],y[1],z[1]);
 vertex(x[4],y[4],z[4]);
 //atras
 vertex(x[2],y[2],z[2]);
 vertex(x[3],y[3],z[3]);
 vertex(x[4],y[4],z[4]); 
 
 endShape();
 
 //base do teto
 beginShape(QUAD);
 vertex(x[0],y[0],z[0]);
 vertex(x[1],y[1],z[1]);
 vertex(x[2],y[2],z[2]);
 vertex(x[3],y[3],z[3]); 
 
 endShape();
 
 //casa
  beginShape(QUADS);
 //cima
 //vertex(x[5],y[5],z[5]);
 //vertex(x[6],y[6],z[6]);
 //vertex(x[7],y[7],z[7]);
 //vertex(x[8],y[8],z[8]); 
 
 //frente
 fill(#DECECE);
 vertex(x[5],y[5],z[5]);
 vertex(x[6],y[6],z[6]);
 vertex(x[10],y[10],z[10]);
 vertex(x[9],y[9],z[9]); 
 
 //esquerda
 vertex(x[5],y[5],z[5]);
 vertex(x[8],y[8],z[8]);
 vertex(x[12],y[12],z[12]);
 vertex(x[9],y[9],z[9]); 
 
 //direita
 vertex(x[6],y[6],z[6]);
 vertex(x[7],y[7],z[7]);
 vertex(x[11],y[11],z[11]);
 vertex(x[10],y[10],z[10]); 
 
 //atras
 vertex(x[8],y[8],z[8]);
 vertex(x[7],y[7],z[7]);
 vertex(x[11],y[11],z[11]);
 vertex(x[12],y[12],z[12]); 
 
 endShape();
 stroke(0);
 pushMatrix();
 translate(0,0,-4.99);
 
  //porta
 beginShape(QUAD);
 fill(0);
 vertex(x[15],y[15],z[15]);
 vertex(x[16],y[16],z[16]);
 vertex(x[14],y[14],z[14]);
 vertex(x[13],y[13],z[13]); 
 endShape();
 
 //janela
 beginShape(QUAD);
 fill(0);
 vertex(x[20],y[20],z[20]);
 vertex(x[19],y[19],z[19]);
 vertex(x[18],y[18],z[18]);
 vertex(x[17],y[17],z[17]); 
 
 endShape();
 popMatrix();
 
}
