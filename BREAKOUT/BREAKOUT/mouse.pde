void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == TIPS) {
    tipsClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == VICTORY) {
    victoryClicks();
  }
}
