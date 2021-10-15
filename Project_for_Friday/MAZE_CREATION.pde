void backGround()
{
  PImage floor;
  floor = loadImage("floor1.jpg");
  image(floor,0,0,width,height);
}

void mazeWall(float mazeX, float mazeY,float mazeWidth,float mazeHeight){
  fill(255);
  rect(mazeX,mazeY,mazeWidth,mazeHeight);
  
  PImage wallImg;
  wallImg = loadImage("wall5.jpg");
  
  for (int i=0; i < (mazeWidth/50); i++){
    for (int j=0; j < (mazeHeight/50); j++){
      image(wallImg, mazeX+(50*i), mazeY+(50*j),50,50);
    }
  }
  if (((playerPos.x + WidthOfPlayer > mazeX) && (playerPos.y + HeightOfPlayer > mazeY)) && ((playerPos.x < mazeX + mazeWidth) && (playerPos.y < mazeY + mazeHeight))){
    collision = true;
  } 
}

void maze(){
  mazeWall(0,100,150,50);
  mazeWall(100,250,300,50);
  mazeWall(100,150,50,100);
  mazeWall(200,0,50,200);
  mazeWall(250,150,50,50);
  mazeWall(300,50,50,150);
  mazeWall(400,150,50,150);
  mazeWall(400,0,50,100);
  mazeWall(500,50,150,50);
  mazeWall(600,100,50,450);
  mazeWall(500,100,50,200);
  mazeWall(150,350,350,50);
  mazeWall(500,300,50,100);
  mazeWall(500,450,50,100);
  mazeWall(350,450,150,50);
  mazeWall(400,500,50,50);
  mazeWall(250,550,100,50);
  mazeWall(150,300,50,50);
  mazeWall(250,500,50,50);
  mazeWall(250,400,100,50);
  mazeWall(150,450,50,50);
  mazeWall(100,500,50,50);
  mazeWall(0,500,50,100);
  mazeWall(50,300,50,150);
  mazeWall(100,450,50,50);
  mazeWall(200,550,50,50);
}
