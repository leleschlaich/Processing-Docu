//Blut, Homework for Day 05
//Lele Schlaich
//Learn about Blood cells 

int [] xpos= new int [20];
int [] ypos= new int [20];
float [] v = { 60, 20 };
String[] namen = { "rote Blutkörperchen", "weiße Blutkörperchen", "Blutplättchen", "55% Blutplasma und", "45% Blutkörperchen:"};

void setup() {
  size(600, 600);
  frameRate(5);
  println(namen[3], namen[4],namen[0], namen[1], namen[2]);
}

void draw() {
  background(#FFFDE0);


  text ();
  drawroteBlut();
  drawweisseBlut ();
  drawBlutplaettchen ();
}

void text (){

 textSize (30);
  fill(#FFBFBF);
  text(namen[0], width/2-200, height/2-30); 
  fill(#B2F4FF);
  text(namen[1], width/2-200, height/2);
  fill(#FFEE2E);
  text(namen[2], width/2-200, height/2+30); 
}


void drawroteBlut() {

  noStroke();
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = (int)random(0, width);
    ypos[i] = (int)random(0, height);

    fill(#FFBFBF);
    ellipse(xpos[i], ypos[i] - v[0], random (40, 60), random (40, 60));
    fill(#D80B0B);
    ellipse(xpos[i], ypos[i] - v[0], random (30, 40), random (30, 40));
  }
}

void drawweisseBlut () {

  stroke(#B2F4FF);

  for (int i = 0; i < xpos.length/4; i++) {
    xpos[i] = (int)random(0, width);
    ypos[i] = (int)random(0, height);
    
    fill(#EDF8FA);

    ellipse(xpos[i], ypos[i] - v[0], v[1], v[1]);
    ellipse(xpos[i]-20, ypos[i] - v[0], v[1], v[1]);
    ellipse(xpos[i]-10, ypos[i]-20 - v[0], v[1], v[1]);
    ellipse(xpos[i], ypos[i]+10 - v[0], v[1], v[1]);
    ellipse(xpos[i]+10, ypos[i]-20 - v[0], v[1], v[1]);
  }
}

void drawBlutplaettchen () {

  noStroke ();
  for (int i = 0; i < xpos.length/2; i++) {
    xpos[i] = (int)random(0, width);
    ypos[i] = (int)random(0, height);
    
    fill(#FFEE2E);

    ellipse(xpos[i], ypos[i] - v[0], random (10,30), random (10,30));
  }
}
