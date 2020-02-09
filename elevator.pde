int[] Helevator = {6, 258, 510, 762};
int i = 3;


void keyPressed() {
  if (elevatorTimes >0) {
    if (key =='1') {
      i = 3;
      elevatorTimes--;
    } else if (key =='2') {
      i = 2;     
      elevatorTimes--;
    } else if (key =='3') {
      i = 1;
      elevatorTimes--;
    } else if (key =='4') {
      i = 0;
      elevatorTimes--;
    }
  }
}
