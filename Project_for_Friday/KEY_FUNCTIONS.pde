void keyPressed(){
  frame = frameCount % 4;
  
  if (key=='w'){
    
    Moving = true;
    StandingLeft = false;
    StandingRight = false;
    StandingUp = true;
    StandingDown = false;
    
    playerImg = upAnis[frame];
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);

    playerPos.y = playerPos.y - movementSpeed;
  }
  if (key=='a'){
    
    Moving = true;
    StandingLeft = true;
    StandingRight = false;
    StandingUp = false;
    StandingDown = false;
    
    playerImg = leftAnis[frame];
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);

    playerPos.x = playerPos.x - movementSpeed;
  }
  if (key=='s'){
    
    Moving = true;
    StandingLeft = false;
    StandingRight = false;
    StandingUp = false;
    StandingDown = true;
    
    playerImg = downAnis[frame];
    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);

    playerPos.y = playerPos.y + movementSpeed;
  }
  if (key=='d'){
    
    Moving = true;
    StandingLeft = false;
    StandingRight = true;
    StandingUp = false;
    StandingDown = false;
    
    playerImg = rightAnis[frame];

    image(playerImg,playerPos.x,playerPos.y,WidthOfPlayer,HeightOfPlayer);
    
    playerPos.x = playerPos.x + movementSpeed;
  }
}

void keyReleased(){
  
  if (key=='w'){
    
    Moving = false;
  }
  if (key=='a'){
    
    Moving = false;
  }
  if (key=='s'){
    
    Moving = false;
  }
  if (key=='d'){
    
    Moving = false;
  }
}
