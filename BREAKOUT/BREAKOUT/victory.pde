void victory() {

  background(0);
  textFont(player2);
  textSize(60);
  text("VICTORY!", width/2, height/3);
  textSize(30);
  text("Good job, grunt, you saved us all!", width/2, height/1.5);
  image(face3, width/2, height/1.9);

}

void victoryClicks() {

  mode = INTRO;
  reset();

}
