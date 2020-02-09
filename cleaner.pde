 class Cleaner {
  //member variables
  float  yPos = 0;
  float xPos = 1000;
  int[] Hcleaner = {6, 258, 510, 762};
  int i = 3;
  int rubbishFloor = int(random(3));
  int currentRubbish =0;
  int formerRubbish = 0;
  int noRubbish = 4;
  int floor1 = 850;
  int floor2 = 596;
  int floor3 = 344;
  int floor4 = 95;
  int climbSpeed = 5;
  int[] Hrubbish = {floor1, floor2, floor3, floor4};
  int r = 0;
  int distThrow = 110;
  int speedC = 8;
  int ladderWidth =100;
  int previousValue3 = 0;
  int previousValue4 = 0;
  int previousValue5 = 0;
  int previousValue6 = 0;


  float Xrubbish = 1200;

  boolean carry = false;
  boolean state = false;
  boolean showImg = false;







  //constructor
  Cleaner(int x, int y) {
    xPos = x;
    yPos = y;
  }

  //functionality

  //show the cleaner
  void displayC() {

    //pick the rubbish
    if (dist(xPos, yPos, Xrubbish, Hrubbish[r])<26 && carry == false) {
      background(255);
      r = (int) random(3);
      Xrubbish = random(455, 1340);
      formerRubbish = currentRubbish;
      currentRubbish = (int) random(3);
      food++;
      elevatorTimes ++;
      carry = true;
      showImg = true;
    }
  }

  //throw into the trashcan
  void throwRubbish() {
    if (colors[formerRubbish] == cla && dist(xPos, yPos, width/2+30, 22*height/25) < distThrow) {
      carry = false;
      showImg = false;
      pushMatrix();
      translate(125, height/2-200);
      noStroke();
      fill(255);
      ellipse(width/2, height/2, 30, 30);
      ellipse(width/2-30, height/2+25, 20, 20);
      ellipse(width/2+60, height/2-40, 100, 50);
      fill(255, 0, 0);
      text("Yummy", width/2+60, height/2-32);
      popMatrix();
    } else if (colors[formerRubbish] == clb && dist(xPos, yPos, 6*width/11+30, 15*height/25) < distThrow) {
      carry = false;
      showImg = false;
      pushMatrix();
      translate(220, 0);
      noStroke();
      fill(255);
      ellipse(width/2, height/2, 30, 30);
      ellipse(width/2-30, height/2+25, 20, 20);
      ellipse(width/2+60, height/2-40, 100, 50);
      fill(252, 219, 28);
      translate(-5, 0);
      text("Yummy", width/2+60, height/2-32);
      popMatrix();
    } else if (colors[formerRubbish] == clc && dist(xPos, yPos, 7*width/12+30, 8*height/25) < distThrow) {
      carry = false;
      showImg = false;
      pushMatrix();
      translate(250, -250);
      noStroke();
      fill(255);
      ellipse(width/2, height/2, 30, 30);
      ellipse(width/2-30, height/2+25, 20, 20);
      ellipse(width/2+60, height/2-40, 100, 50);
      fill(83, 252, 28);
      text("Yummy", width/2+60, height/2-32);
      popMatrix();
    } else if (colors[formerRubbish] == cld && dist(xPos, yPos, 8*width/13, height/25) < distThrow) {
      carry = false;
      showImg = false;
      noStroke();
      fill(255);
      ellipse(width/2, height/2, 30, 30);
    }
  }


  //game over
  void gameOver1() {
    if (xPos > width/2+100+270 || xPos < width/2+270) {
      if (dist(xPos, yPos, ding.badX, ding.badY) < 10 || dist(xPos, yPos, tina.badX, tina.badY) < 30 || dist(xPos, yPos, ying.badX, ying.badY) < 30 || dist(xPos, yPos, coco.badX, coco.badY) < 30 && freeze == false) {
        freeze = true;
        textState = true;
      }
    }
  }
  //moving image


  void robot() {


    if (yPos == 850 || yPos == 596 || yPos == 344 || yPos == 95 ) {
      image (imgrbt, xPos-50, yPos-80);
      imgrbt.resize(3*271/9, 3*356/9);
    } else {    
      image (imgrbtB, xPos-50, yPos-80);
      imgrbtB .resize(3*271/9, 3*356/9);
    }
  }


  void elevatorTrack() {
    noStroke();
    fill(0, 10, 255);
    if (xPos < width/2+100+270 && xPos > width/2+270) {
      fill(255, 0, 0);
    }
    rect(width/2+290, 0, 60, height-30);
    fill(255);
    rect(width/2+305, 0, 30, height-30);
    fill(23);
    fill(188, 42, 255);
    rect(width/2+310, 0, 20, height-30);

    fill(250, 58, 58);
    ellipse(width/2+321-13+12, height/2+250-10, 45, 45);
    fill(255);
    ellipse(width/2+321-13+12, height/2+250-10, 40, 40);
    textSize(25);
    fill(250, 58, 58);
    text("F1", width/2+321-13+12, height/2+250);

    fill(250, 241, 58);
    ellipse(width/2+321-13+12, height/2-10, 45, 45);
    fill(255);
    ellipse(width/2+321-13+12, height/2-10, 40, 40);
    textSize(25);
    fill(250, 241, 58);
    text("F2", width/2+321-13+12, height/2);

    fill(58, 241, 58);
    ellipse(width/2+321-13+12, height/2-250-10, 45, 45);
    fill(255);
    ellipse(width/2+321-13+12, height/2-250-10, 40, 40);
    textSize(25);
    fill(58, 241, 58);
    text("F3", width/2+321-13+12, height/2-250);

    fill(0, 10, 255);
    ellipse(width/2+321-13+12, height/2-400-10, 45, 45);
    fill(255);
    ellipse(width/2+321-13+12, height/2-400-10, 40, 40);
    textSize(25);
    fill(0, 10, 255);
    text("F4", width/2+321-13+12, height/2-400);
  }



  void floorPic() {
    image(imgflr1, 250, height/2-100);
    image(imgflr1, 170, height/2+150);
    image(imgflr1, 350, height/2-350);
    image(imgflr1, 440, height/2-600);
    imgflr1.resize(3*800/2, 9*240/8);
    for (int i = 0; i < 1200; i += 25) {
      image(imgflrA, width/2+i-455, height/2+168);
      imgflrA.resize(260/5, 220/5);
    }
    for (int i = 0; i < 1300; i += 25) {
      image(imgflrA, width/2+i-550, height/2+418);
      imgflrA.resize(260/5, 220/5);
    } 
    for (int i = 0; i < 1200; i += 25) {
      image(imgflrA, width/2+i-380, height/2-82);
      imgflrA.resize(260/5, 220/5);
    }
    for (int i = 0; i < 1200; i += 25) {
      image(imgflrA, width/2+i-280, 118);
      imgflrA.resize(260/5, 220/5);
    }
  }

  void elevatorPic() {
    pushMatrix();
    translate(-width/2+350, 0);
    image (imgele, width-195, Helevator[i]-110);
    imgele.resize(4*612/9, 4*612/9);
    popMatrix();
  }

  void rocks() {
    image(imgRK1, width/2-480, height/2+100);
    imgRK1. resize(1*837/4, 1*257/3);
    image(imgRK2, width/2-550, height/2+340);
    imgRK2. resize(1*837/4, 1*257/3);
    image(imgRK3, width/2-400, height/2-150);
    imgRK3. resize(1*837/4, 1*257/3);
    image(imgRK3, width-160, height/2+100);
    imgRK3. resize(1*837/4, 1*257/3);
    image(imgRK1, width-160, height/2+350);
    imgRK1. resize(1*837/4, 1*257/3);
    image(imgRK2, width-160, height/2-150);
    imgRK2. resize(1*837/4, 1*257/3);
  }


  void rubbish() {
    if (currentRubbish == 0) {    
      image (imgRubbish[0], Xrubbish-80, Hrubbish[r]-45+20);
      imgRubbish[0].resize(2*332/7, 2*152/7);
    }
    if (formerRubbish == 0  && showImg == true) {    
      image (imgRubbish[0], xPos-100, yPos-65+20);
      imgRubbish[0].resize(2*332/7, 2*152/7);
    }

    if (currentRubbish == 1) {    
      image (imgRubbish[1], Xrubbish-50, Hrubbish[r]-70+20);
      imgRubbish[1].resize(2*216/7, 2*233/7);
    }        
    if (formerRubbish == 1 && showImg == true) {    
      image (imgRubbish[1], xPos-80, yPos-70+20);
      imgRubbish[1].resize(2*216/7, 2*233/7);
    }

    if (currentRubbish == 2) {    
      image (imgRubbish[2], Xrubbish-75, Hrubbish[r]-80+20);
      imgRubbish[2].resize(1*800/11, 1*800/11);
    }
    if (formerRubbish == 2 && showImg == true) {    
      image (imgRubbish[2], xPos-80, yPos-80+20);
      imgRubbish[2].resize(1*800/11, 1*800/11);
    }

    if (currentRubbish == 3) {    
      image (imgRubbish[3], Xrubbish-40, Hrubbish[r]-50+20);
      imgRubbish[3].resize(3*267/7, 3*189/7);
    }
    if (formerRubbish == 3 && showImg == true) {    
      image (imgRubbish[3], xPos-80, yPos-70+20);
      imgRubbish[3].resize(3*267/7, 3*189/7);
    }
  }

  void monsters() {
    image(imgmstOrg, tina.badX-100, tina.badY-80);
    imgmstOrg.resize(305/2, 229/2);

    image(imgmstGrn, coco.badX-100, coco.badY-80);
    imgmstGrn.resize(319/2, 220/2);

    image(imgmstBlu, ying.badX-100, ying.badY-80);
    imgmstBlu.resize(306/2, 272/2);

    image(imgmstYlw, ding.badX-100, ding.badY-80);
    imgmstYlw.resize(328/2, 225/2);
  }

  void leftRight() {
    if (yPos == 596 || yPos == 850 || yPos == 344 || yPos == 95) {
      if (sensorValues[0] < 20) {
        xPos -= speedC;
      }
      if (sensorValues[1] < 20) {
        xPos += speedC;
      }
    }
  }

  void upDown () {

    //1 to 2
    if (xPos<width/2-400+ladderWidth && xPos>width/2-400 && yPos <= floor1 && yPos >= floor2) {
      if (sensorValues[2] < 20) {       
        yPos -= climbSpeed;
        if (yPos <= floor2 && yPos >= floor2 - 5) {
          yPos = floor2;
        }
      } else if (sensorValues[0] < 20 && sensorValues[1] < 20) {
        yPos += climbSpeed;
        if (yPos >= floor1 && yPos <= floor1 + 5) {
          yPos = floor1;
        }
      }
    }    
    if (xPos<width/2+630+ladderWidth && xPos>width/2+630 && yPos <= floor1 && yPos >= floor2) {
      if (sensorValues[2] < 20) {       
        yPos -= climbSpeed;
        if (yPos <= floor2 && yPos >= floor2 - 5) {
          yPos = floor2;
        }
      } else if (sensorValues[0] < 20 && sensorValues[1] < 20) {
        yPos += climbSpeed;
        if (yPos >= floor1 && yPos <= floor1 + 5) {
          yPos = floor1;
        }
      }
    }

    //2 to 3
    if (xPos<width/2+200 + ladderWidth && xPos>width/2+200 && yPos <= floor2 && yPos >= floor3 ) {
      if (sensorValues[2] < 20) {       
        yPos -= climbSpeed;
        if (yPos <= floor3 && yPos >= floor3 - 5) {
          yPos = floor3;
        }
      } else if (sensorValues[0] < 20 && sensorValues[1] < 20) {
        yPos += climbSpeed;
        if (yPos >= floor2 && yPos <= floor2 + 5) {
          yPos = floor2;
        }
      }
    }
    if (xPos<width/2-82 + ladderWidth && xPos>width/2-82 && yPos <= floor2 && yPos >= floor3 ) {
      if (sensorValues[2] < 20) {       
        yPos -= climbSpeed;
        if (yPos <= floor3 && yPos >= floor3 - 5) {
          yPos = floor3;
        }
      } else if (sensorValues[0] < 20 && sensorValues[1] < 20) {
        yPos += climbSpeed;
        if (yPos >= floor2 && yPos <= floor2 + 5) {
          yPos = floor2;
        }
      }
    }

    //3 to 4
    if (xPos<2*width/8+100 + ladderWidth && xPos>2*width/8+100 && yPos >= floor4 && yPos <= floor3) {
      if (sensorValues[2] < 20) {       
        yPos -= climbSpeed;
        if (yPos <= floor4 && yPos >= floor4 - 5) {
          yPos = floor4;
        }
      } else if (sensorValues[0] < 20 && sensorValues[1] < 20) {
        yPos += climbSpeed;
        if (yPos >= floor3 && yPos <= floor3 + 5) {
          yPos = floor3;
        }
      }
    }
    if (xPos<width/2+630 + ladderWidth && xPos>width/2+630 && yPos >= floor4 && yPos <= floor3) {
      if (sensorValues[2] < 20) {       
        yPos -= climbSpeed;
        if (yPos <= floor4 && yPos >= floor4 - 5) {
          yPos = floor4;
        }
      } else if (sensorValues[0] < 20 && sensorValues[1] < 20) {
        yPos += climbSpeed;
        if (yPos >= floor3 && yPos <= floor3 + 5) {
          yPos = floor3;
        }
      }
    }
  }

  void changefloor() {

    if (elevatorTimes >0) {
      if (sensorValues[3] ==1 && previousValue3 == 0) {
        i = 3;
        elevatorTimes--;
      } else if (sensorValues[4] ==1 && previousValue4 == 0) {
        i = 2;     
        elevatorTimes--;
      } else if (sensorValues[5] ==1 && previousValue5 == 0) {
        i = 1;
        elevatorTimes--;
      } else if (sensorValues[6] ==1 && previousValue6 == 0) {
        i = 0;
        elevatorTimes--;
      }
    }


    if (xPos < width/2+100+270 && xPos > width/2+270 && elevatorTimes > 0) {
      if (sensorValues[3] ==1 && previousValue3 == 0) {
        i = 3;
        yPos = floor1;
        xPos = width/2+340;
      } else if (sensorValues[4] ==1 && previousValue4 == 0) {
        i = 2;
        yPos = floor2;
        xPos = width/2+340;
      } else if (sensorValues[5] ==1 && previousValue5 == 0) {      
        i = 1;
        yPos = floor3;
        xPos = width/2+340;
      } else if (sensorValues[6] ==1 && previousValue6 == 0) {
        i = 0;
        yPos = floor4;
        xPos = width/2+340;
      }
    }
    previousValue3 = sensorValues[3];
    previousValue4 = sensorValues[4];
    previousValue5 = sensorValues[5];
    previousValue6 = sensorValues[6];
  }
  void border() {

    //border
    if (yPos == floor1 && xPos < width/8+20) {
      xPos = width/8+20;
    } else if (yPos == floor1 && xPos > width - 10) {
      xPos = width - 10;
    } else if (yPos == floor2 && xPos < width/8+110) {
      xPos = width/8+110;
    } else if (yPos == floor2 && xPos > width - 10) {
      xPos = width - 10;
    } else if (yPos == floor3 && xPos < width/8+200) {
      xPos = width/8+200;
    } else if (yPos == floor3 && xPos > width - 10) {
      xPos = width - 10;
    } else if (yPos == floor4 && xPos < width/8+300) {
      xPos = width/8+300;
    } else if (yPos == floor4 && xPos > width - 10) {
      xPos = width - 10;
    }
  }
  void keyPressed() {

    if (keyPressed) {
      if (yPos == 596 || yPos == 850 || yPos == 344 || yPos == 95)
        if (key == CODED) {
          if (keyCode == LEFT) {
            xPos -= speedC;
          } else if (key == CODED) {
            if (keyCode == RIGHT) {
              xPos += speedC;
            }
          }
        }

      //change the floors
      if (xPos < width/2+100+270 && xPos > width/2+270 && elevatorTimes > 0) {
        if (key =='1') {
          i = 3;
          yPos = floor1;
          xPos = width/2+340;
        } else if (key =='2') {
          i = 2;
          yPos = floor2;
          xPos = width/2+340;
        } else if (key =='3') {      
          i = 1;
          yPos = floor3;
          xPos = width/2+340;
        } else if (key =='4' ) {
          i = 0;
          yPos = floor4;
          xPos = width/2+340;
        }
      }

      //step ladders

      //1 to 2
      if (xPos<width/2-400+ladderWidth && xPos>width/2-400 && yPos <= floor1 && yPos >= floor2) {
        if (key == CODED) {
          if (keyCode == UP) {       
            yPos -= climbSpeed;
            if (yPos <= floor2 && yPos >= floor2 - 5) {
              yPos = floor2;
            }
          } else if (keyCode == DOWN) {
            yPos += climbSpeed;
            if (yPos >= floor1 && yPos <= floor1 + 5) {
              yPos = floor1;
            }
          }
        }
      }
      if (xPos<width/2+630+ladderWidth && xPos>width/2+630 && yPos <= floor1 && yPos >= floor2) {
        if (key == CODED) {
          if (keyCode == UP) {       
            yPos -= climbSpeed;
            if (yPos <= floor2 && yPos >= floor2 - 5) {
              yPos = floor2;
            }
          } else if (keyCode == DOWN) {
            yPos += climbSpeed;
            if (yPos >= floor1 && yPos <= floor1 + 5) {
              yPos = floor1;
            }
          }
        }
      }

      //2 to 3
      if (xPos<width/2+200 + ladderWidth && xPos>width/2+200 && yPos <= floor2 && yPos >= floor3 ) {
        if (key == CODED) {
          if (keyCode == UP) {       
            yPos -= climbSpeed;
            if (yPos <= floor3 && yPos >= floor3 - 5) {
              yPos = floor3;
            }
          } else if (keyCode == DOWN) {
            yPos += climbSpeed;
            if (yPos >= floor2 && yPos <= floor2 + 5) {
              yPos = floor2;
            }
          }
        }
      }
      if (xPos<width/2-82 + ladderWidth && xPos>width/2-82 && yPos <= floor2 && yPos >= floor3 ) {
        if (key == CODED) {
          if (keyCode == UP) {       
            yPos -= climbSpeed;
            if (yPos <= floor3 && yPos >= floor3 - 5) {
              yPos = floor3;
            }
          } else if (keyCode == DOWN) {
            yPos += climbSpeed;
            if (yPos >= floor2 && yPos <= floor2 + 5) {
              yPos = floor2;
            }
          }
        }
      }

      //3 to 4
      if (xPos<2*width/8+100 + ladderWidth && xPos>2*width/8+100 && yPos >= floor4 && yPos <= floor3) {
        if (key == CODED) {
          if (keyCode == UP) {       
            yPos -= climbSpeed;
            if (yPos <= floor4 && yPos >= floor4 - 5) {
              yPos = floor4;
            }
          } else if (keyCode == DOWN) {
            yPos += climbSpeed;
            if (yPos >= floor3 && yPos <= floor3 + 5) {
              yPos = floor3;
            }
          }
        }
      }
      if (xPos<width/2+630 + ladderWidth && xPos>width/2+630 && yPos >= floor4 && yPos <= floor3) {
        if (key == CODED) {
          if (keyCode == UP) {       
            yPos -= climbSpeed;
            if (yPos <= floor4 && yPos >= floor4 - 5) {
              yPos = floor4;
            }
          } else if (keyCode == DOWN) {
            yPos += climbSpeed;
            if (yPos >= floor3 && yPos <= floor3 + 5) {
              yPos = floor3;
            }
          }
        }
      }

      if (key ==ENTER) {
        freeze = false;
        textState1 = true;
        previousTime = 0;
        pastTime = currentTime;
        food = 0; 
        elevatorTimes = 3;
        xPos = 1300;
        yPos = 850;
        start = millis();
        tutorial = false;
      }
      if (key == SHIFT) {
        clickCounter = 0;
      }
    }
  }
}
