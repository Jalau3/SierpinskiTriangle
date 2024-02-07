int size;
public void setup()
{
  size(600,600);
  size = 100;
}
public void draw()
{
  fill(0);
  background(255);
  sierpinski(width/2-size/2,width/2+size/2,size);
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=30){
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
void keyPressed(){
  if(keyCode==UP)
    size+=15;
  if(keyCode==DOWN)
    size-=15;
}
