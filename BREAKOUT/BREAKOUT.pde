//breakout
//farzat selo
//programming 11

//minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer intro;

//mode ints
int mode;
final int INTRO  = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER= 4;

//arrays
int[] x;
int[] y;
int brickd;
int n;
int tempx;
int tempy;

//entity variables
float ballx, bally, balld, paddlex, paddley, paddled;

//ints
int lives, timer;

//floats
float pausem, introm, startx, starty, startw, starth;

//keyboard variables
boolean akey, dkey;

//varaible ints
float vx, vy;

//font int
PFont player2;

void setup() {

  fullScreen(FX2D);
  mode = INTRO;
  
  lives = 8;

  //array setup
  n = 152;
  x = new int[n];
  y = new int[n];
  brickd = 50;
  tempx = 100;
  tempy = 50;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    tempx = tempx + 70;
    if (tempx > width-50) {
      tempy = tempy + 70;
      tempx = 100;
    } 
    i++;
  }

  //font(player2)
  player2 = createFont("PressStart2P-Regular.ttf", 200);

  //paddle variables
  paddlex = width/2;
  paddley = height;
  paddled = 200;

  //ball variables
  ballx = width/2;
  bally = height/1.3;
  balld = 20;

  //vx & vy variables
  vx = random(-8, 8);
  vy = random(8, 1);

  timer = 0;
  pausem = 100;
  introm = width/1.4;
  startx = width/2;
  starty = height/1.8;
  startw = width/3;
  starth = height/4;

  rectMode(CENTER);
  noStroke();
} //setup end======================

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
} //setup draw====================

void tactileRect (float x, float y, float w, float h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(255);
  } else {
    stroke(100);
  }
}//tactileRect end===============
