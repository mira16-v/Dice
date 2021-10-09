Die maya;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(216, 171, 255);
  for (int i = 0; i < 3; i++)
  {
	for (int m = 0; m < 3; m++)
	{
  	maya = new Die(m*60, i*60);
  	maya.show();
  	maya.roll();
	}
  }
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
	rect(myX, myY, 50, 50);
	fill(0, 0, 0);
	if(numRoll == 1){
  	ellipse(myX+25, myY+25, 10,10);
	} 
else if (numRoll == 2){
  	ellipse(myX+25, myY+12.5,10,10);
  	ellipse(myX+25, myY+37.5,10,10);
	} 
else if (numRoll == 3){
  	ellipse(myX+5, myY+5,10,10);
  	ellipse(myX+10, myY+10,10,10);
  	ellipse(myX+15, myY+15,10,10);
	} 
else if (numRoll == 4){
  	ellipse(myX+5, myY+5,10,10);
  	ellipse(myX+15, myY+5,10,10);
  	ellipse(myX+5, myY+15,10,10);
  	ellipse(myX+15, myY+15,10,10);
	} 
else if (numRoll ==5){
  	ellipse(myX+5, myY+5,10,10);
  	ellipse(myX+15, myY+5,10,10);
  	ellipse(myX+5, myY+15,10,10);
  	ellipse(myX+15, myY+15,10,10);
  	ellipse(myX+25, myY+25,10,10);
	}  
else if(numRoll == 6){
  	ellipse(myX+5, myY+5,10,10);
  	ellipse(myX+15, myY+5,10,10);
  	ellipse(myX+5, myY+10,10,10);
  	ellipse(myX+15, myY+10,10,10);
  	ellipse(myX+5, myY+15,10,10);
  	ellipse(myX+15, myY+15,10,10);
	}
  }
}
