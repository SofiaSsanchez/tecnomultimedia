void keyPressed() {
  if (keyCode == RIGHT) {
    if (posX2+1 < cantidad - 1)
    posX2++;
  } else if (keyCode == LEFT) {
    if (posX2-1 > 0)
    posX2--;
  } else if (keyCode == UP) {
    if (posY2-1 > 0)
    posY2--;
  } else if (keyCode == DOWN) {
    if (posY2+1 < cantidad - 1)
    posY2++;
  }
}
