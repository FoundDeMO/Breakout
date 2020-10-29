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
final int TIPS = 2;
final int GAME = 3;
final int PAUSE = 4;
final int GAMEOVER = 5;
final int VICTORY = 6;

//arrays
int[] x;
int[] y;
boolean[] alive;
int brickd, t1, t2, t3, t4, t5, n, tempx, tempy;

//entity variables
float ballx, bally, balld, paddlex, paddley, paddled, quicktip, pausem, introm, startx, starty, startw, starth;

//ints
int lives, timer, score;

//keyboard variables
boolean akey, dkey;

//varaible ints
float vx, vy;

//font int
PFont player2;

//image
PImage face, face2, face3;

void setup() {

  fullScreen(FX2D);
  mode = INTRO;

  lives = 1;

  //quicktip
  if (mode == TIPS) {
    quicktip = random(1, 5);
    if (quicktip == 1) {
    }
  }

  //array setup
  n = 152;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  brickd = 50;
  tempx = 100;
  tempy = 50;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 70;
    if (tempx > width-50) {
      tempy = tempy + 70;
      tempx = 100;
    } 
    i++;
  }


  //font(player2)
  player2 = createFont("PressStart2P-Regular.ttf", 200);

  //
  face = loadImage("face.png");
  face2 = loadImage("face2.png");
  face3 = loadImage("face3.png");

  //paddle variables
  paddlex = width/2;
  paddley = height+25;
  paddled = 200;

  //ball variables
  ballx = width/2;
  bally = height/1.3;
  balld = 20;

  //vx & vy variables
  vy = random(3, 1);

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
  } else if (mode == TIPS) {
    tips();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == VICTORY) {
    victory();
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
