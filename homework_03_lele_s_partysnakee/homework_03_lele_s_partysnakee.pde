// PartySnakePong, Homework for Day 03
//Lele Schlaich
//Crazy Party-Snake Kaa from the Djunglebook is trying to choke Mogli
// a & y left player (1)
// k & m right player (2)


int xSpieler1=20;
int ySpieler1=60;
int xSpieler2=780;
int ySpieler2=60;


float xBall= 400;
float yBall= 300;
float xSpeed=-4;
float ySpeed=0;

int radGesicht=30;
int radAuge=4;

int runde=0;

float farbe1 = random(0,255);
float farbe2 = random(0,255);
float farbe3 = random(0,255);

PImage img;


void setup() {
  size(800, 600);
  img = loadImage("mogli.jpg");
  image(img, -530, -50);
  ellipseMode(RADIUS);
}

void draw() {
  //background(255);
  drawSliderLeft();
  drawSliderRight();
  drawBall();
  changeColor();
  ballMovements ();
  text("Runde: " + runde, 700, 20);
}


void drawSliderLeft() {
  rectMode(CENTER);
  fill(farbe1, farbe2, farbe3);
  rect(xSpieler1, ySpieler1, 10, 150);
  if (keyPressed) {
    if (key=='a') {
      if(ySpieler1 > 50){
      ySpieler1=ySpieler1-5;
    }
  }
  }
  
  if (keyPressed) {
    if (key=='y') {
      if(ySpieler1 < 550){  
      ySpieler1=ySpieler1+5;
    }
  }
  }
}


void drawSliderRight() {
  
  rectMode(CENTER);
  fill(farbe1, farbe2, farbe3);
  rect(xSpieler2, ySpieler2, 10, 150);
  if (keyPressed) {
    if (key=='k') {
      if(ySpieler2 > 50){
      ySpieler2=ySpieler2-5;
    }
  }
  }
  if (keyPressed) {
    if (key=='m') {
      if(ySpieler2 < 550){
      ySpieler2=ySpieler2+5;
    }
  }
  }
}

void drawBall() {
     fill(farbe1, farbe2, farbe3);
    //fill(100, 255, 100);
    ellipse(xBall, yBall, radGesicht, radGesicht);
   fill(#FA0000);
    ellipse(xBall-10, yBall-10, radAuge, radAuge);
    ellipse(xBall+10, yBall-10, radAuge, radAuge);
    line(xBall-5, yBall, xBall+5, yBall);
    line(xBall, yBall, xBall, yBall+15);
    line(xBall, yBall+15, xBall-3, yBall+20);
    line(xBall, yBall+15, xBall+3, yBall+20);
}
void changeColor(){

farbe1 = random(0,100);
farbe2 = random(0,255);
farbe3 = random(0,255);
}


void ballMovements (){
 
  
xBall = xBall + xSpeed;
yBall = yBall + ySpeed;

if(xBall < 30){
 if(yBall < (ySpieler1 + 55) && yBall > (ySpieler1 - 55)){ //berühren
    xSpeed = (- xSpeed)+0.25; // abprallen los in andere richtung
    ySpeed = ySpeed - (ySpieler1 - yBall) *(0.1);  //winkel
    runde = runde +1;

}else{
  
runde = 0; //es geht von vorne los
xBall = 400;
yBall = 300;
xSpeed = -4;
ySpeed = 0;
  }
 }
     if(xBall > 770){
       if(yBall < (ySpieler2 + 55) && yBall > (ySpieler2 - 55)){
      xSpeed = (- xSpeed)+0.25;
      ySpeed = ySpeed - (ySpieler2 - yBall) *(0.1);
      runde = runde +1;
      
     }else{
     
       runde = 0;
       xBall = 400;
       yBall = 300;
       xSpeed = -4;
       ySpeed = 0;
     }
     }
      
 if(yBall > 595 || yBall < 5){ //abprallen oben unten
  ySpeed = -ySpeed; 
 }
 
 if(xBall > 795){ //abprallen oben unten
  xSpeed = -xSpeed; 
 }
}
