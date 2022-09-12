import peasy.*;
PeasyCam camera;

PShape head, body, arm, leg, ponta, ball;
int i=20;
int j=i+60;
int x = 0;
void setup() 
{
  size (600, 400, P3D);
   PImage img = loadImage("jabulani.png");
   camera = new PeasyCam(this, 300);
  // frame.setLocation(0,0);

  // PShape head -- centered
  head = createShape(SPHERE, 20);
  head.setStrokeWeight(0);
  head.setFill(color(#F7B78C));

  ponta = createShape(SPHERE, 5);
  ponta.setStroke(color(255,05,40));
  ponta.setStrokeWeight(4);
  ponta.setFill(color(126));


  ball = createShape(SPHERE, 20);
  ball.setStroke(color(#F7B78C));
  ball.setStrokeWeight(0);
 // ball.setFill(color(126));
  ball.setTexture(img);
    
    // body -- above and below the center
  body = createShape(LINE, 0, -50, 0, 0, 50, 0);
  body.setStroke(color(#271BD1));
  body.setStrokeWeight(4);
  body.setFill(color(126));

  // arm -- extends down from the center
  arm = createShape(LINE, 0, 0, 0, 0, 25, 0);
  arm.setStroke(color(#F7B78C));
  arm.setStrokeWeight(4);
  arm.setFill(color(126));
  


  // leg -- extends down from the center
  leg = createShape(LINE, 0, 0, 0, 0, 30, 0);
  leg.setStroke(color(#F7B78C));
  leg.setStrokeWeight(4);
  leg.setFill(color(126));
}

void draw() {
  if(keyPressed)
  {
    if(key=='r')
    {
   i=20;
   j=i+60;
   x = 0;
    }
  }
  
  background(51);
  //bola
  pushMatrix();
    translate(0,60,-60);
    if(j <= 20)
    {
      translate(0,-x,-x);
      rotateX((radians(x)));
      
      x=x+10;//velocidade da bola
    }
    shape(ball);
  popMatrix();
  // corpo
  shape(body);

  // cabeççç
  pushMatrix();
    translate(0, -50, 0);
    shape(head);
    translate(0,0,-20);
    //boca baixo
      beginShape();
        fill(#F25656);
        vertex(-12,0,4);
        bezierVertex(-12,10,0,12,10,0,12,0,4);
      endShape();
    //boca cima
      beginShape();
        fill(#F25656);
        vertex(-12,0,4);
        bezierVertex(-12,5,-2,12,5,-2,12,0,4);
      endShape();
      
    //olho esquerdo
     beginShape();
        noFill();
        vertex(-9,-3,2);
        bezierVertex(-9,-10,3,-2,-10,2,-2,-3,0);
      endShape();
      
    //olho direito
     beginShape();
        noFill();
        vertex(2,-3,0);
        bezierVertex(2,-10,2,9,-10,3,9,-3,2);
      endShape();
      
  popMatrix();

  // arms--direito
  pushMatrix();
  translate(0, -15, 0); // move arms from center up to shoulders
    pushMatrix();
      rotateZ(radians(55)); // swing left arm out
      rotateX(radians(-40));
      shape(arm);
      //antebraço
      pushMatrix();
        translate(0,25,0);
        rotateZ(radians(-20));
        rotateX(radians(-40));
        shape(arm);
      popMatrix();
    popMatrix();
    
    //esquerdo
    pushMatrix();
      rotateZ(radians(-55)); // swing right arm out
      rotateX(radians(30));
      shape(arm);
      //antebraço
      pushMatrix();
        translate(0,25,0);
        rotateZ(radians(20));
        rotateX(radians(-40));
        shape(arm);
      popMatrix();
    popMatrix();
  popMatrix();

  // legs
  pushMatrix();
    //esquerda
    translate(0, 50, 0); // move legs down to bottom of body
      pushMatrix();
        rotateZ(radians(25));
        shape(leg);
        //canela
        translate(0,30,0);
        rotateZ(radians(-15));
        shape(leg);
        pushMatrix();
          translate(0,30,0);
          shape(ponta);
        popMatrix();
      popMatrix();
    
    //perna direita -- chute
    pushMatrix();
      rotateZ(radians(-20));
      rotateX(radians(i));
      if(i>-70){
        i=i-2;//velocidade da coxa
      }
      shape(leg);
      
      pushMatrix();
        translate(0,30,0);
        rotateZ(radians(15));
        rotateX(radians(j));
      if(i<=-70){
         if(j>0){
            j=j-4;//velocidade da canela
          }     
      }
        shape(leg);
        pushMatrix();
        translate(0,30,0);
        shape(ponta);
        popMatrix();

      popMatrix();
    popMatrix();
  popMatrix();

}
