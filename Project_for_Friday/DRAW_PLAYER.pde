void player()
{
  if (collision == true)
  {
    playerPos.x = currentPlayerX;
    playerPos.y = currentPlayerY;
    collision = false;
  }
  fill(255,255,255,0);
  rect(playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);
  
  if ((StandingRight == true) && (Moving == false))
  {
    playerImg = loadImage("right2.png");
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);
  }
  if ((StandingLeft == true) && (Moving == false))
  {
    playerImg = loadImage("left1.png");
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);
  }
  if ((StandingUp == true) && (Moving == false))
  {
    playerImg = loadImage("up2.png");
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);
  }
  if ((StandingDown == true) && (Moving == false))
  {
    playerImg = loadImage("down2.png");
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);
  }
    
  
  playerImg = loadImage("wall5.jpg"); 
  StayWithinBoarder();
  currentPlayerX = playerPos.x;
  currentPlayerY = playerPos.y;
}

//keeps player within size of the screen
void StayWithinBoarder()
{
  if (playerPos.x < 0)
  {
    playerPos.x = 0;
  }
  if (playerPos.x + WidthOfPlayer > width)
  {
    playerPos.x = width - WidthOfPlayer;
  }
  if (playerPos.y < 0)
  {
    playerPos.y = 0;
  }if (playerPos.y + HeightOfPlayer > height)
  {
    playerPos.y = height - HeightOfPlayer;
  }
}
