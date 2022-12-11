 class Asteroid extends Floater {
protected int rotSpeed, mySize;  

public Asteroid() {
corners = 8;
xCorners = new int[] {-18, -14, 0, 14, 18, 14, 0, -14};
yCorners = new int[] {0, 10, 16, 10, 0, -10, -16, -10};
myColor = color(244, 244, 244);
rotSpeed = (int)(Math.random()*7)-3;
myCenterX = (int)(Math.random()*1000);
myCenterY = (int)(Math.random()*600);
myXspeed = (int)(Math.random()*6)-4; 
myYspeed = (int)(Math.random()*7)-4;
myPointDirection = (int)(Math.random()*360);
}
  
public void move() {
  turn(rotSpeed);
  super.move();
}



public double getX() {
  return myCenterX;
}

public double getY() {
  return myCenterY;
}
}
