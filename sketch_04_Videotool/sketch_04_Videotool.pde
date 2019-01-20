//Lele Schlaich, 15/01/2019
//Video Tool to see yourself 4 times through the camera, change colors and frame position with mouse
//click at the same time to make it go crazy (invert)!

import processing.video.*;
Capture video;

void setup(){
size(960,480);

video = new Capture (this, width/2, height); //width und height kann man auch verändern durch 2 oder 4 zb
video.start();

}

void captureEvent(Capture video) {
  video.read();
}
void draw() {
  
  image (video, mouseX, mouseY);
  image (video, mouseX+width/2, mouseY);
  image (video, mouseX+width/2, mouseY+height/2);
  image (video, mouseX, mouseY+height/2);
  
  tint (mouseX, mouseY, mouseX);
  if(mousePressed){
 filter (INVERT);
}
color c1=get(width/2, height/4);
rect (0,0,30,30);
fill(c1);

}
