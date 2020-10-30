void tips() {

  background(0);
  textMode(CENTER);
  textFont(player2);
  fill(255);
  textSize(26);
  text("Destroy the large squares, they are enemy ships!", width/2, height/2);
  imageMode(CENTER);
  image(gif2[frame2], width/2, height/3, 200, 200);
  if (frameCount % 50 == 0) {
  frame2 = frame2 + 1;
  }
  if (frame2 == 1) frame2 = 0;
}

void tipsClicks() {

  mode = GAME;
}
