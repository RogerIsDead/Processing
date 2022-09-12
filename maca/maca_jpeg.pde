void setup()
{
  size(800,600);

}

void  draw()
{
  translate(400,300);
  background(255);
  strokeWeight(5);
  
  
  
  stroke(0);
  beginShape();
  vertex(0,-100);
  //lado direito 1
  bezierVertex(100,-200,150,-90,150,-30);
  //lado direito 2
  bezierVertex(155,100,50,155,0,110);
  //lado esquerdo 1
  bezierVertex(-90,155,-130,80,-135,-10);
  //lado esquerdo 2
  bezierVertex(-140,-80,-120,-190,10,-110);
  endShape();
  
  
  //parte de cima
  beginShape();
  vertex(10,-110);
  quadraticVertex(0, -140, 30, -150);
  endShape();
  
  beginShape();
  vertex(10,-140);
  quadraticVertex(0, -180, -60, -170);
  quadraticVertex(-30, -120, 10, -140);
  endShape();
  
  line(10,-140,-40,-160);
  
}
