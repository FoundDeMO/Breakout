void pause() {

  textAlign(CENTER, CENTER);
  textFont(player2);
  textSize(pausem);
  text("PAUSED", width/2, height/2);
  pausem = pausem + 1;

  if (pausem > 110) {
    pausem = pausem - 1;
  }
}

void pauseClicks() {

  mode = GAME;
  pausem = 100;
}
