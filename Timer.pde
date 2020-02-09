int currentTime;
int previousTime = 0;
int pastTime = 0;
int showTime = interval;
int addTime =0;
int newTime =0;
int time = 0;

void timer() {
  //text("cu" + currentTime, width/2-300, height/2);
  //text("pr" + previousTime, width/2-300, height/2+50);
  //text("sh" + showTime, width/2-300, height/2+100);
  //text("pa" + pastTime, width/2-300, height/2+150);
  //text("ne" + newTime, width/2-300, height/2+200);
  currentTime = (m / 1000)%interval+1;
  if (currentTime - previousTime >= interval) {
    previousTime = currentTime;
  }

  textAlign(CENTER);
  textSize(50);
  fill(colors[0]);

  if (previousTime>= interval) {
    textAlign(CENTER);
    textSize(60);
    fill(233, 43, 123);
    text("Time Up", width/2, height/2);
    freeze = true;
  }

  // add the past time
}
