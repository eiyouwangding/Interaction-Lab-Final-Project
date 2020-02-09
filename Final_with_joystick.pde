import processing.serial.*;
import processing.sound.*;

SoundFile file;


Cleaner frank;
Bad ding, coco, ying, tina; 

PImage[] imgRubbish = new PImage[4];
PImage imgb, imgr, imgg, imgy, imgl1, imgl2, imgl3, imgflr1, imgflr2, imgflr3, imgrbt, imgrbtB, imgppr, imgele, imgmstOrg, imgmstGrn, imgmstBlu, imgmstYlw, imgflrA, back, imgRK1, imgRK2, imgRK3, imgRK4, imgItf; 

color cla = color(255, 0, 0), clb = color(255, 200, 0), clc = color(0, 200, 0), cld = color(20, 100, 255);
float badX, badY;
int m;
int xPos, yPos;
int ladderWidth = 75; 
int food = 0;
int elevatorTimes = 100 ;
int interval = 100;
int start;
int direcS = 1;
int x1 = 400;
int clickCounter = 0;
int currentButtonValue = 0;
int previousButtonValue = 0;


String BGM = "BGM.mp3";
String path;
String[] strings = {"You've been caught", "Time Up"}; 
color[] colors = {cla, clb, clc, cld};

boolean textState = true;
boolean textState1 = true;
boolean carry = false;
boolean freeze = false;
boolean tutorial = true;


//arduino

String myString = null;
Serial myPort;


int NUM_OF_VALUES = 7;  
int[] sensorValues;     


void setup() {

  //set up the music
  path = sketchPath(BGM);
  file = new SoundFile(this, path);
  file.loop();

  fullScreen();
  setupSerial();

  start = millis();


  //setup the good
  frank = new Cleaner(1300, 850);

  //set up the bad
  ding = new Bad( width/2-80, 598, 30);
  coco = new Bad( width/2+100, 346, 30);
  ying = new Bad( width/2-40, 94, 30);
  tina = new Bad( width/2 + 30, 850, 30);

  //set up the image
  imgItf = loadImage("InterFace.png");
  imgRK1 = loadImage("RK1.png");
  imgRK2 = loadImage("RK2.png");
  imgRK3 = loadImage("RK3.png");
  imgb = loadImage("blueTrashcan.png");
  imgr = loadImage("redTrashcan.png");
  imgg = loadImage("greenTrashcan.png");
  imgy = loadImage("yellowTrashcan.png");
  imgl1 = loadImage("lader1.png");
  imgl2 = loadImage("lader2.png");
  imgl3 = loadImage("lader3.png");
  imgflr1 = loadImage("floor.png");
  imgflr2 = loadImage("floor.png");
  imgflr3 = loadImage("floor.png");
  imgrbt = loadImage("rbt copy1.png");
  imgrbtB = loadImage("rbt copy.png");
  imgele = loadImage("elevator.png");
  imgmstOrg = loadImage("monsterOr.png");
  imgmstGrn = loadImage("mosterGr.png");
  imgmstBlu = loadImage("mosterBl.png");
  imgmstYlw = loadImage("mosterYe.png");
  imgflrA = loadImage("brick.png");
  back = loadImage("back.png");
  imgRubbish[0] = loadImage("coca.png");
  imgRubbish[1] = loadImage("bag.png");
  imgRubbish[2] = loadImage("beer.png");
  imgRubbish[3] = loadImage("paper.png");
}
void mouseClicked() {
  clickCounter ++;
}
void draw() {

  frank.keyPressed();
  if (tutorial == true) {



    //updateSerial();
    //printArray(sensorValues[2]);
    //frank.leftRight();
    //frank.upDown();
    //frank.changefloor();



    switch(clickCounter) {
      //intro1
    case 0:
      background(0);
      textSize(60);
      fill(10, 255, 40);
      text("Bobby –––– The Trash Collector", width/2-400, height/2);
      fill(230, 65, 240);
      text("Bobby –––– The Trash Collector", width/2-405, height/2-5);
      textSize(20);
      fill(255);
      text("Click the Mouse to Continue", width/2 - 400, height-100);
      break;
    case 1:
      background(0);
      textSize(60);
      text("Three steps to learn the game", width/2-400, height/2);
      textSize(20);
      text("Click the Mouse to Continue", width/2 - 400, height-100);
      break;
    case 2:
      background(0);
      textSize(60);
      image(imgItf, 100, 100);
      imgItf.resize(5*1728/7, 3*1296/5);
      textSize(20);
      fill(255);
      text("Click the Mouse to Continue", width/2 - 400, height-100);
      break;
    case 3:
      xPos = 1300;
      yPos = 850;
      back();
      setImage();
      frank.robot();
      frank.floorPic();
      frank.elevatorTrack();
      frank.elevatorPic();
      frank.border();
      textSize(45);
      fill(231, 22, 3);
      text("Elevator Times: " + elevatorTimes, width/2- 700, height/2-230);
      textSize(20);
      text("in the real game, elevator times is limited", width/2- 700, height/2);
      text("You need to collect trash to get more elevator times", width/2- 700, height/2+30);
      textSize(20);
      fill(0);
      text("Click the Mouse to Continue", width/2 - 700, height-100);
      break;
    case 4:
      background(0);
      textSize(60);
      text("Step 2", width/2-100, 60);
      textSize(35);
      fill(255);
      text("Next step, pick up the trashes", width/2-500, height/2-55);
      fill(0, 255, 0);
      text("&&", width/2-450, height/2);
      fill(255);
      text("Throw them into the right trashcans", width/2-500, height/2+ 55);
      textSize(20);
      fill(255);
      text("Click the Mouse to Continue", width/2 - 400, height-100);
      break;

    case 5:
      xPos = 1300;
      yPos = 850;
      back();
      setImage();
      frank.robot();
      frank.elevatorTrack();
      frank.floorPic();
      frank.elevatorPic();
      frank.displayC();
      frank.throwRubbish();
      frank.rubbish();
      frank.border();
      textSize(45);
      fill(231, 22, 3);
      text("Elevator Times: " + elevatorTimes, width/2- 700, height/2-230);
      textSize(20);
      fill(0);
      text("Click the Mouse to Continue", width/2 - 700, height-100);
      break;
    case 6:
      background(0);
      textSize(60);
      text("Step 3", width/2-100, 60);
      fill(255);
      textSize(35);
      text("Now, monsters are on your way", width/2-600, height/2-55);
      fill(255, 0, 0);
      text("Don't be caught", width/2-600, height/2);
      fill(255);
      text("You can hide behind the elevator track or the rocks on each floors", width/2-600, height/2+ 55);
      textSize(20);
      //fill(255);
      //text("Click the Mouse to Continue", width/2 - 400, height-100);
      fill(249, 250, 20);
      textSize(50);
      text(" Press the ENTER. You have 100s", width/2-400, height/2+400);  
      break;
    }
  } else {


    //arduino
    updateSerial();
    printArray(sensorValues);

    m = millis() - start;

    frank.displayC();

    //set up the sence
    back();
    setImage();
    textShow();


    frank.robot();
    frank.elevatorTrack();
    frank.floorPic();
    frank.elevatorPic();
    frank.monsters();
    frank.rocks();
    frank.rubbish();
    frank.displayC();
    frank.keyPressed();
    frank.throwRubbish();
    frank.gameOver1();


    //frank.leftRight();
    //frank.upDown();
    //frank.changefloor();

    frank.border();


    // the bad + end the game
    if (freeze == false) {

      //theBad
      ding.runningAround1();
      coco.runningAround2();
      ying.runningAround3();
      tina.runningAround4();

      timer();
      rank();
    } else {
      timer();
      frank.xPos = frank.xPos;
      carry = false;
      textAlign(CENTER);
      textSize(60);
      fill(233, 43, 123);
      textState1 = false;
      if (textState == true) {
        text(strings[0], width/2, height/2);
      }
      if (previousTime >= interval) {
        textState = false;
        //pushMatrix();
        //translate(0, 20);
        text(strings[1], width/2, height/2);
        //popMatrix();
      }
    }
  }
}
