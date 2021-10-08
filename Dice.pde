Die maya;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(216, 171, 255);
  int totalRoll = 0;
  for(int i = 0; i < 3; i++)
  {
     for(int m = 0; m < 3; m++)
	{
       	  maya = new Die(m*60, i*60);
     	  maya.show();
          If (maya.roll(); < 7)
         {
          totalRoll = totalRoll + maya.roll;
         }
        }
   }
   	System.out.print(“Total Sum: “ totalRoll);
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
   fill(169, 252, 197);
   rect(myX, myY, 50, 50);
 
  }

}
