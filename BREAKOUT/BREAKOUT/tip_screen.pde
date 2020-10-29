void tips() {

  background(0);
  textMode(CENTER);
  textFont(player2);
  fill(255);
  textSize(30);
  text("Quick Tip: The large squares are enemy ships!", width/2, height/2);
  imageMode(CENTER);
  image(face2, width/2, height/3);
}

void tipsClicks() {

  mode = GAME;
}
