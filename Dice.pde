void setup()
{
  size(915,915);
  noLoop();
}
void draw()
{
  int dots=0;
 background (0,0,0);
   for(int y = 50; y<900; y=y+51)
   {
    for (int x = 0; x<900; x=x+51)
    {
  Die d = new Die (x,y);
  d.show();
  if (d.side == 1){
    dots=dots+1;
  }
  else if (d.side == 2){
    dots=dots+2;
  }
  else if (d.side == 3){
    dots=dots+3;
  }
  else if (d.side == 4){
    dots=dots+4;
  }
  else if (d.side == 5){
    dots=dots+5;
  }
  else if (d.side == 6){
    dots=dots+6;
  }
  }
     }
   textSize(40);
   text("Sum: "+ dots,325,45);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int die, newX, newY, side;
  Die(int x, int y) 
  {
    newX=x;
    newY=y;
    roll();
  }
  void roll()
  {
    die=(int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(200,200,200);
    rect(newX,newY,50,50);
    stroke(255);
    fill(255);
    side = (int)((Math.random()*6)+1);
  if (side == 1){
    ellipse (newX+25,newY+25,10,10);
    }
  else if (side == 2){
    ellipse (newX+10,newY+10,10,10);
    ellipse (newX+40,newY+40,10,10);
      }
   else if (side == 3){
    ellipse (newX+25,newY+25,10,10);
    ellipse (newX+10,newY+10,10,10);
    ellipse (newX+40,newY+40,10,10);
    }
  else if (side == 4){
    ellipse (newX+40,newY+10,10,10);
    ellipse (newX+10,newY+10,10,10);
    ellipse (newX+40,newY+40,10,10);
    ellipse (newX+10,newY+40,10,10);
    }
  else if (side == 5){
    ellipse (newX+25,newY+25,10,10);
    ellipse (newX+40,newY+10,10,10);
    ellipse (newX+10,newY+10,10,10);
    ellipse (newX+40,newY+40,10,10);
    ellipse (newX+10,newY+40,10,10);
    }
  else if (side == 6){
    ellipse (newX+10,newY+25,10,10);
    ellipse (newX+40,newY+25,10,10);
    ellipse (newX+40,newY+10,10,10);
    ellipse (newX+10,newY+10,10,10);
    ellipse (newX+40,newY+40,10,10);
    ellipse (newX+10,newY+40,10,10);
    }
}
}
