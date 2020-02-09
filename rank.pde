//byte score;
//byte[] highestScore = {score};
int hScore = 29;




int highFood = 14;
int highele = 15;

void rank() {
  hScore = highFood + highele;
  
  if (food >= highFood) {
    highFood = food;
  }
  if(elevatorTimes >= highele) {
  highele = elevatorTimes;
  }
  
}
