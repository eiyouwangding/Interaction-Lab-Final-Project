class Bad {
  //member variables
  float badX, badY, badSize;
  int direction = 1;
  int leftSide = 200;
  int rightSide = 200;
  




  //constructor
  Bad(float x, float y, float s) {
    badX = x;
    badY = y;
    badSize = s;
  }
  //functionalities


  //running around
  void runningAround1() {
    if (badY == 598 && badX < width/8+100 + leftSide || badX > width - rightSide) {
      direction *= -1;
    }
    badX += 4.8*direction;
  }
  void runningAround2() {
    if (badY == 346 && badX < width/8+200 + leftSide || badX > width - rightSide) {
      direction *= -1;
    }
    badX += 4*direction;
  }
  void runningAround3() {
    if (badY == 94 && badX < width/8+300 + leftSide || badX > width - rightSide) {
      direction *= -1;
    }
    badX += 5.3*direction;
  }
  void runningAround4() {
    if (badY == 850 && badX < width/8+ 80 + leftSide || badX > width - rightSide) {
      direction *= -1;
    }
    badX += 5*direction;
  }
}
