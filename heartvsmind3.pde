/**
 *Hanna Kang-Brown
 <br> September 28, 2011
 <br> Heart vs. Mind
 */

boolean button1 = false;
boolean button2 = false;

int y=0;
float x = 200;
int pY=0;

String d = "Press upon the mind or the heart to see where it goes.";

//The heart remembers places

PShape s;
PImage english;
PImage paris;
PImage bali;
PImage norway;
PImage manila;
PImage italy;
PImage durban;
PImage processing;



void setup() {
  s = loadShape ("red heart.svg");
  english = loadImage ("english_countryside.jpg");
  paris = loadImage ("ce-paris-eiffel.jpg");
  bali = loadImage("balihotel.jpg");
  norway = loadImage("norway.jpg");
  italy = loadImage("italy.jpg");
  durban = loadImage("durban.jpg");
  manila = loadImage("manila.jpg");
  processing = loadImage("processing.jpg");


  size(600, 400);
  smooth();
}

void draw() {
  background(255);
  noFill();
  body ();
  heart();
  mind();


  if (mouseX<148 && mouseX>28 && mouseY<320 && mouseY>240 && mousePressed) {
    button1 = true;
  }
  else {
    button1 = false;
  }
  if (button1) {
    //image placement
    
    image(english, 230, y);
    y=y+2;
    image(paris, 230, y-400);
    image(bali, 230, y-600);
    image(durban, 230, y-1000);
    image(norway, 230, y-1400);
    image(italy, 230, y-1800);
    image(english, 230, y-2400);
    image(paris, 230, y-2800);
    image(bali, 230, y-2900);
    image(durban, 230, y-3200);
    image(norway, 230, y-3600);
    image(italy, 230, y-4000);
    image(manila, 230, y-4500);
if(y>4500) y = 0;
  }

  if (mouseX>0 && mouseX<65 && mouseY<80 && mouseY>20 && mousePressed) {
    button2 = true;
  }
  else {
    button2 = false;
  }
  if (button2) {
    image(processing, x, pY);
    pY=pY-1;
    x= x+random(-10,10);
    
  }
}


void body(){
  stroke(255, 102, 0);
  strokeWeight (2);
  bezier(45, 0, 140, 10, 100, 120, 90, 140);
  bezier(90, 140, 100, 250, 180, 180, 210, 260);
  bezier(210, 260, 220, 280, 220, 400, 216, 400);
}


void heart(){
  shape(s, 68, 240, 80, 80);
}

void mind(){
  fill (0);
  stroke(0);
  rect (-5, 20, 70, 60);
}




