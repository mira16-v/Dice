void draw()
{
  int totalRolls = 0;
  background(216, 171, 255);
  for (int i = 0; i < 3; i++)
  { 
  for (int m = 0; m < 3; m++)
  {
    maya = new Die(m*100, i*100);
    maya.roll();
    maya.show();
    totalRolls = totalRolls + maya.numRoll;
    }
  } //System.out.println(totalRolls);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //rolls
  int numRoll;
  int myX;
  int myY;
  Die(int x, int y) //constructor
  {
  //variable initializations here
  numRoll = (int)(Math.random() * 6) + 1;
  myX = x;
  myY = y;
  }
  void roll()
  {
  numRoll = (int)(Math.random() * 6) + 1;
  }

  void show()
  {
  //your code here
    
  noStroke();
  fill(((int)(Math.random()* 202)+ 95),(int)((Math.random()* 243) + 155), ((int)(Math.random()*227)+132));
  rect(myX, myY, 100, 100);
  fill(0, 0, 0);
  if(numRoll == 1){
    ellipse(myX+50, myY+50, 20,20);
  } else if (numRoll == 2){
    ellipse(myX+33, myY+50,20,20);
    ellipse(myX+67, myY+50,20,20);
  } else if (numRoll == 3){
    ellipse(myX+33, myY+33,20,20);
    ellipse(myX+55, myY+55,20, 20);
    ellipse(myX+67, myY+67,20,20);
  } else if (numRoll == 4){
    ellipse(myX+33, myY+33, 20,20);
    ellipse(myX+67, myY+33, 20,20);
    ellipse(myX+33, myY+67, 20,20);
    ellipse(myX+67, myY+67, 20,20);
  } else if (numRoll ==5){
    ellipse(myX+33, myY+33, 20,20);
    ellipse(myX+67, myY+33, 20,20);
    ellipse(myX+33, myY+67, 20,20);
    ellipse(myX+67, myY+67, 20,20);
    ellipse(myX+50, myY+50, 20,20);
  }  else{
    ellipse(myX+33, myY+33, 20,20);
    ellipse(myX+33, myY+67, 20,20);
    ellipse(myX+33, myY+45, 20,20);
    ellipse(myX+67, myY+33, 20,20);
    ellipse(myX+67, myY+45, 20,20);
    ellipse(myX+67, myY+67, 20,20);
  }
  }
}
