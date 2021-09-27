import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Processing_Heart extends PApplet {

//https://diyusthad.com/2018/07/how-to-draw-heart-using-processing.html
PShape heart;
 
public void setup(){
  
      
    int HeartSize=15;
  
    heart=createShape();
    heart.beginShape();
    heart.fill(200,110,156);
    heart.stroke(5);

    for (float t=0; t<=2*PI; t+=.01f){
      heart.vertex((-16*HeartSize*pow(sin(t), 3)), (-(13*HeartSize*cos(t)-5*HeartSize*cos(2*t)-2*HeartSize*cos(3*t)-HeartSize*cos(4*t))));
  }
  // Don't "CLOSE" a shape if you want it to be a path
  
  heart.endShape();
 // heart.setFill(color(15));
  
}


public void draw(){
  
  frameRate(60);
  background(0);
  
    translate(350,350);
    //stroke(250, 0, 0);
    
    //strokeWeight(2); 
    //heart.setFill(color(random(255)));
    shape(heart);
    heart.setFill(color(105,155,25));

}
  
  public void settings() {  size(700,700,P2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Processing_Heart" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
