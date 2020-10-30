void intro() {


  //design
  background(0);
  fill(255);
  textFont(player2);
  textAlign(CENTER, CENTER);
  textSize(introm);
  text("BREAKOUT", width/2, height/4);
  textSize(20);
  text("Farzat Selo", width-115, height-20);

  //ball
  fill(255);
  square(ballx, bally, balld);
  ballx = ballx + vx;
  bally = bally + vy;

  //ball bouncing
  if (bally < balld/2 || bally > height-balld/2) {
    vy = vy * -1;
  }
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }
  //mechanics
  introm = introm + 0.1;
  if (introm > 160) {
    introm = introm - 30;
  }

  //play button
  stroke(0);
  fill(255);
  strokeWeight(6);
  rectMode(CENTER);
  tactileRect(width/3.05, height/2.35, width/2.95, height/4);
  rect(width/2, height/1.8, width/3, height/4);
  fill(100);
  textFont(player2);
  textAlign(CENTER, CENTER);
  textSize(70);
  text("START", width/2, height/1.8);
}

void introClicks() {

  ballx = width/2;
  bally = height/1.3;
  mode = TIPS;
}
