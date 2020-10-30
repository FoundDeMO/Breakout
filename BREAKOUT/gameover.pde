void gameover() {

  background(0);
  textFont(player2);
  textMode(CENTER);
  textSize(60);
  text("GAME OVER", width/2, height/3);
  textSize(30);
  text("You have failed your mission", width/2, height/1.3);
  text("return to basecamp immediately", width/2, height/1.2);
  imageMode(CENTER);
  image(face, width/2, height/2);
}

void gameoverClicks() {

  mode = INTRO;
  reset();
}
