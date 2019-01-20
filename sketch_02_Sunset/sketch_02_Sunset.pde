//Sunset, Homework for Day02
//Lele Schlaich
//This program draws a moving sun, a moon as mouse at day and sparkly stars at night
//everything changes colors to show the sunset till night
//The sun goes back to the left of the screen when pressing the mouse
//and the whole sunset becomes faster when pressing a key

//initialisation

float x = 0;
float y =100;

float rot = 350;
float gruen = 248;
float blau = 250;

float rotBackground = 209;
float rotStern = 100;

int xStandort ; 
int yStandort ;

float a;
float b;

//setup
void setup() {
  size(1000, 1000);
  frameRate(15); //langsam - bei keyklick schneller!

 }
 
//draw
 void draw() {
 
  background(rotBackground, gruen, blau); //damit nur 1 Sonne und Farbveränderung- hier und nicht im setup!
  
  //sonne
  strokeWeight(1);
  ellipse (x, y, 50, 50);
  fill (rot, gruen, 0);
  stroke(rot, gruen, 0); //farben
  line ( x, y-35, x, y-75);
  line ( x, y+35, x, y+75);
  line ( x+80, y, x+35, y);
  line ( x-80, y, x-35, y);
  line ( x-60, y-60, x-25, y-20);
  line ( x+60, y-60, x+25, y-20);
  line ( x+60, y+60, x+25, y+20);
  line ( x-60, y+60, x-25, y+20); 
  
  //sonne bewegung
  x=x+1.5; 
  y=y+0.5;
 
  //farbveränderung
  rot = rot-0.3;
  gruen = gruen-0.3;
  blau = blau-0.3; 
  
  rotBackground = rotBackground-0.3;
  
  
  //kleine sterne
  strokeWeight(5);
  stroke(rotStern, 255, blau);
  a = random(1000);
  b = random(1000);
  point(a,b); 
  
  rotStern= rotStern +0.3;
  
  //moon
  beginShape();
  noStroke();
  vertex(mouseX,mouseY);
  bezierVertex(mouseX+110, mouseY, mouseX+100, mouseY+95, mouseX+60, mouseY+110);
  bezierVertex(mouseX+70, mouseY+120, mouseX+80, mouseY, mouseX, mouseY);
  endShape(); //mond
    
  //moon position
  xStandort= mouseX;
  yStandort= mouseY;
    println("x bei "+xStandort+", y bei ="+yStandort); 
}


void keyPressed() {
  
   //wird schneller
   frameRate(x+10); 

}

   
   void mousePressed() {
  
   //sun back to x=0 
   x=0;
}
