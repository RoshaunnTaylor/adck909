int counter = 0;

PVector playerPos;
//boolean keypressed = false;
float movementSpeed;
//width and height of rectangle
float WidthOfPlayer,HeightOfPlayer;
//create the box to win
PVector WinBoxPos;
float WinBoxWidth,WinBoxHeight;

//current position of the player
float currentPlayerX,currentPlayerY;

boolean Won;

boolean collision = false;

boolean StandingLeft,StandingRight,StandingUp,StandingDown;

PImage playerImg;
PImage winBoxImg;

PImage [] leftAnis;
PImage [] rightAnis;
PImage [] upAnis;
PImage [] downAnis;

boolean Moving;

int frame;

void setup()
{
  size(700,600);
  playerPos = new PVector(20,20);
  movementSpeed = 5;
  WidthOfPlayer = 32;
  HeightOfPlayer = 32;
  
  WinBoxPos = new PVector(10,150);
  WinBoxWidth = 75.0;
  WinBoxHeight = 75.0;
  noStroke();
  
  frameRate(144);
  
  Won = false;
  
  StandingLeft = false;
  StandingRight = false;
  StandingUp = false;
  StandingDown = true;
  
  Moving = false;
  
  leftAnis = new PImage[4];
  leftAnis[0] = loadImage("left1.png");
  leftAnis[1] = loadImage("left2.png");
  leftAnis[2] = loadImage("left3.png");
  leftAnis[3] = loadImage("left4.png");
  
  
  rightAnis = new PImage[4];
  rightAnis[0] = loadImage("right1.png");
  rightAnis[1] = loadImage("right2.png");
  rightAnis[2] = loadImage("right3.png");
  rightAnis[3] = loadImage("right4.png");
  
  upAnis = new PImage[4];
  upAnis[0] = loadImage("up1.png");
  upAnis[1] = loadImage("up2.png");
  upAnis[2] = loadImage("up3.png");
  upAnis[3] = loadImage("up4.png");
  
  downAnis = new PImage[4];
  downAnis[0] = loadImage("down1.png");
  downAnis[1] = loadImage("down2.png");
  downAnis[2] = loadImage("down3.png");
  downAnis[3] = loadImage("down4.png");
  
  frame = 0;
}

void draw(){
  backGround();
  maze();
  //draw winbox
  WinBox();
  //draw player
  player();
  //win condition
  WinCondition();
  // for when win condition is met
  YouWin();
} 
