  
PShape heart;
 
void setup(){
  
      size(700,700,P2D);
    int HeartSize=15;
  
    heart=createShape();
    heart.beginShape();
    heart.fill(200,110,156);
    heart.stroke(5);

    for (float t=0; t<=2*PI; t+=.01){
      heart.vertex((-16*HeartSize*pow(sin(t), 3)), (-(13*HeartSize*cos(t)-5*HeartSize*cos(2*t)-2*HeartSize*cos(3*t)-HeartSize*cos(4*t))));
  }
  // Don't "CLOSE" a shape if you want it to be a path
  
  heart.endShape();
 // heart.setFill(color(15));
  
}


void draw(){
  
  frameRate(60);
  background(0);
  
    translate(350,350);
    //stroke(250, 0, 0);
    
    //strokeWeight(2); 
    //heart.setFill(color(random(255)));
    shape(heart);
    heart.setFill(color(105,155,25));

}
  
