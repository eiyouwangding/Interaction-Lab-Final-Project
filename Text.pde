

void textShow() {
  textAlign(CENTER);
  textSize(50);
  fill(22, 22, 211);
  text("Trash: " + food, width/2- 500, height/2-280);
  fill(255, 116, 190);
  text("Trash: " + food, width/2- 500-2, height/2-280-2);
  textSize(45);
  fill(22, 22, 211);
  text("Elevator Times: " + elevatorTimes, width/2- 480, height/2-230);
  fill(255, 116, 190);
  text("Elevator Times: " + elevatorTimes, width/2- 480-2, height/2-230-2);
  if ( elevatorTimes == 0) {
    textSize(30);
    fill(231, 22, 3);
    text("Run out of Elevator Times", width/2-500, height/2);
    text("GET MORE TRASH !", width/2-500, height/2+50);
  }
  //showTime = interval - (millis() / 1000)%interval;
  if (textState1 == true) {
    fill(22, 22, 211);
    textSize(50);
    text("Time: " + (interval - (m / 1000)%interval), width/2-500, 115);
    fill(255, 116, 190);
    text("Time: " + (interval - (m / 1000)%interval), width/2-500-2, 115-2);
  }
  if (textState1 == false) {

    fill(39, 240, 60, 200);
    rect(width/2-300, height/2-50, 600, 200);
    //pushMatrix();
    //translate(0, 20);
    textSize(50);
    fill(22, 22, 211);
    text("Best Protector: " +hScore, width/2, height/2 + 100);
    text("Your Score: " + (food + elevatorTimes), width/2, height/2 + 50);
    fill(255, 116, 190);
    text("Best Protector: " +hScore, width/2-2, height/2 + 100-2);
    text("Your Score: " + (food + elevatorTimes), width/2-2, height/2 + 50-2);
    //popMatrix();
  }
}
