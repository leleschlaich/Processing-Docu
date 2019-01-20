//Lele Schlaich
//3D objects (stars) in space with additional little blinking stars
//drag them around with your mouse to see different angles


float [] x= { -300, -200, -100, 100, 200, 400, 300 } ; //the file
float [] y= { -200, -100, 0, 0, 200, -200, 100};
float [] z= { 430, 130, 480, 180, 350, 380, 100};
float a;
float b;
float c;
PFont mapFont;

void setup() {
  size(1000, 1000, P3D);
  sphereDetail(40);
  mapFont = createFont ("retrofitted", 12);
  }


void draw() {
  background(0);
 
  translate(width/2, height/2, -500);
  
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, height, -PI, PI));
  drawAxes();
  drawStars ();
  drawLittleStars ();
  
}

void drawStars () {
  
  for (int i=0; i<x.length; i++){
    pushMatrix();
  translate(width/2, height/2, -500);
  fill (#F9FFB7);
  noStroke();
  lights();
  translate (x[i],y[i], z[i]);
  sphere(30);
  popMatrix();
 
  }}
  
 void drawLittleStars () {
  
  stroke(#EAFF08);
  a = random(-3000, 3000);
  b = random(-3000, 3000);
  c = random(-3000, 3000);
  fill (#F1F2E1);
  translate (a,b,c);
  sphere(20); 
  }
  
void drawAxes() {
  textSize(20);
  fill(255);
  stroke(#9DA086);
  line(-300, 0, 0, 300, 0, 0);
  text("+x", 300, 0, 0);
  text("-x", -330, 0, 0);
  stroke(#B6B7AF);
  line(0, -300, 0, 0, 300, 0);
  text("+y", 0, 330, 0);
  text("-y", 0, -300, 0);
  stroke(#CDD1A9);
  line(0, 0, -300, 0, 0, 300);
  text("+z", 0, 0, 330);
  text("-z", 0, 0, -300);
}
