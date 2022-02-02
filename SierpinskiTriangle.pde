public void setup()
{
  size(500, 500);
  background(152, 209, 172);
}
public void draw()
{
  sierpinski(225, 225, 50);
}
public void mousePressed()//optional
{
  sierpinski((int)Math.random()*500, (int)Math.random()*500, 350);
}
public void sierpinski(int x, int y, int len) 
{
if(len <= 20){
  triangle(x, y, x+(len/2), y+len, x+len, y);
} else{
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y+(len/2), len/2);
}
}
