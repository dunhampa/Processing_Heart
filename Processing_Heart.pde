//https://diyusthad.com/2018/07/how-to-draw-heart-using-processing.html
PShape heart;
 
void setup(){
  
    size(700,700,P2D);
    int HeartSize=15;
  
    heart=createShape();
    heart.beginShape();
    heart.fill(200,80,80);
    heart.stroke(7);

    for (float t=0; t<=2*PI; t+=.0001){
      heart.vertex((-16*HeartSize*pow(sin(t), 3)), (-(13*HeartSize*cos(t)-5*HeartSize*cos(2*t)-2*HeartSize*cos(3*t)-HeartSize*cos(4*t))));
  }
  // Don't "CLOSE" a shape if you want it to be a path
  
  heart.endShape();
 // heart.setFill(color(15));
  
}


void draw(){
  
  frameRate(60);
  background((int(random(0,255))),(int(random(0,255))),(int(random(0,255))));
  
    translate(350,350);
    //stroke(250, 0, 0);
    
    //strokeWeight(2); 
    //heart.setFill(color(random(255)));
    shape(heart);
    heart.setFill(color((int(random(0,255))),(int(random(0,255))),(int(random(0,255)))));
    heart.setStroke(color((int(random(0,255))),(int(random(0,255))),(int(random(0,255)))));
    heart.setStrokeWeight(int(random(1,45)));
    delay(1000);

}
  
