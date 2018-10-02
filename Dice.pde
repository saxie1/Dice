int totalDots=0;
void setup()
{
  background(255);
  noLoop();
  size(300,300);
}
void draw()
{
  background(255);
  for(int y=25;y<=250;y+=50){
    for(int x=25;x<=250;x+=50){
        Die bob = new Die(x,y);
        bob.show();
    }
  }
  text("You rolled: " + totalDots,110,300);
  totalDots=0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int r,myX,myY,count;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    r=(int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255,0,0);
    rect(myX,myY,50,50);
    fill(0);
    if(r==1){
      ellipse(myX+25,myY+25,10,10);
    }else if(r==2){
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX+38,myY+38,10,10);
    }else if(r==3){
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+38,myY+38,10,10);      
    }else if(r==4){
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX+35,myY+13,10,10);
      ellipse(myX+13,myY+35,10,10);
      ellipse(myX+35,myY+35,10,10);
    }else if(r==5){
      ellipse(myX+13,myY+13,10,10);
      ellipse(myX+35,myY+13,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+13,myY+35,10,10);
      ellipse(myX+35,myY+35,10,10);
    }else if (r==6){
      ellipse(myX+13,myY+10,10,10);
      ellipse(myX+35,myY+10,10,10);
      ellipse(myX+13,myY+25,10,10);
      ellipse(myX+35,myY+25,10,10);
      ellipse(myX+13,myY+40,10,10);
      ellipse(myX+35,myY+40,10,10);
    }
    totalDots=totalDots+r;
  }
}