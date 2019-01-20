void setup(){

size (700,700);
background ( 255, 255, 255 );
fill(#F0E3E3,40);
//noFill();
stroke (0,40);

}

void draw (){
  
  float t=(float)frameCount;
 
 pushMatrix ();
 translate (0, height/2);
 
 //---- länglich
 
  ellipse (frameCount, sin(t/-100)*100, 50, 50);
  ellipse (frameCount, sin(t/-100)*-100, 50, 50);
  
  ellipse (frameCount, cos(t/100)*100, 50, 50);
  ellipse (frameCount, cos(t/100)*-100, -50, -50);
  
 //---- kreis am gewünschten punkt von ursprünglichen Koordinatensystem 
  popMatrix();
  translate (width/2, height/2);
  
  ellipse (sin(t/20)*t, cos(t/20)*t, 50, 50);
  ellipse (sin(t/-100)*100, cos(t/-100)*100, 50, 50);
 
}
