public void setup()
{
  size(500, 500);
  background(152, 209, 172);
  noFill();
  stroke(187, 151, 250);
  strokeWeight(4);
  triangle(50, 50, 250, 450, 450, 50);
}
public void draw()
{
  sierpinski(10, 10, 50);
}
public void mousePressed()//optional
{
  sierpinski(mouseX, mouseY, 30);
}
public void sierpinski(int x, int y, int len) 
{
if(len <= 20){
  strokeWeight(1);
  triangle(x, y, x+(len/2), y+len, x+len, y);
} else{
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y+(len/2), len/2);
}
}
