void WinBox(){
  fill(0,255,0,0);
  rect(WinBoxPos.x,WinBoxPos.y,WinBoxWidth,WinBoxHeight);
  winBoxImg = loadImage("door.png");
  image(winBoxImg,WinBoxPos.x,WinBoxPos.y,WinBoxWidth,WinBoxHeight);
}

void WinCondition(){
  if (((playerPos.x + WidthOfPlayer > WinBoxPos.x) && (playerPos.y + HeightOfPlayer > WinBoxPos.y)) && ((playerPos.x < WinBoxPos.x + WinBoxWidth) && (playerPos.y < WinBoxPos.y + WinBoxHeight))){
    Won = true;
  }
}

void YouWin(){
  if (Won == true){
    noLoop();
    background(255);
    textSize(128);
    fill(0,255,0);
    text("YOU WIN", width/5, height/2);
  }
}
