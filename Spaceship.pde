class Spaceship extends Floater {
public Spaceship() {
   corners = 4;
   xCorners = new int[] {-15, 35, -15, -1};
   yCorners = new int[] {-15, 0, 15, 0};
   myCenterX = myCenterY = 400;
   myXspeed = myYspeed = 0;
   myColor = color((int)(Math.random()*220), (int)(Math.random()*245), 260);
   myPointDirection = 0;
  }
public void setXspeed(int x) {
  myXspeed = x;
}
public void setYspeed(int y) {
  myYspeed = y;
}
public void setCenterX(int a) {
  myCenterX = a;
}
public void setCenterY(int b) {
  myCenterY = b;
}
public void setDirection(int c) {
  myPointDirection = c;
}
public double getX() {
  return myCenterX;
}

public double getY() {
  return myCenterY;
}

}
