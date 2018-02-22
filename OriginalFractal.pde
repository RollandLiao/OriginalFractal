public void myFractal(int x, int y, int size)
{
  ellipse(x,y,size,size);
  ellipse(y,x,size,size);
  rect(x,y,size/2,size/2);
  rect(y,x,size/2,size/2);
  if(size > 10){
    myFractal(x-size,y,size/2);
    myFractal(x+size,y,size/2);
  }
}
public void setup()
{
  size(500,500);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250,250,120);
}