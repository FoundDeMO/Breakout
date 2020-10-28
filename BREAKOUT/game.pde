void game() {

  //design
  background(0);
  textFont(player2);
  textSize(40);
  text("LIVES:"+lives, width-150, height-100);

  //mechanics
  timer = timer + 1;

  //paddle
  fill(255);
  circle(paddlex, paddley, paddled);

  //ball
  fill(255);
  square(ballx, bally, balld);

  //move ball
  if (timer > 150) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //ball bouncing
  if (bally < balld/2) {
    vy = vy * -1;
  }
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }
  if (bally > height-balld/2) {
  lives = lives - 1;
    ballx = width/2;
    bally = height/1.3;
    timer = 0;
  }
  
  //lives
  if (lives == 0) {
  mode = GAMEOVER;
  }

  //paddles bouncing
  if (dist(paddlex, paddley, ballx, bally) < paddled/2 + balld/2) {
    vx = (ballx - paddlex)/10;
    vy = (bally - paddley)/10;
  }

  //movepaddle
  if (akey == true) paddlex = paddlex - 10;
  if (dkey == true) paddlex = paddlex + 10;

  if (paddlex > width-100) {
    paddlex = paddlex -10;
  }
  if (paddlex < 100) {
    paddlex = paddlex +10;
  }

  //bricks

  int i = 0;
  while (i < n) {

    square(x[i], y[i], brickd);
    //brick bounce
    if (dist(x[i], y[i], ballx, bally) < brickd/2 + balld/2) {
      vx = (ballx - x[i])/3;
      vy = (bally - y[i])/3;
    }
    i++;
  }
}

void gameClicks() {

  mode = PAUSE;
}
