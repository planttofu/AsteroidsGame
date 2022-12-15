class Bullet extends Floater {
  double dRadians;
  public Bullet(Spaceship pop) {
    myCenterX = pop.getX();
    myCenterY = pop.getY();
    myPointDirection = pop.getDirection();
    myXspeed = pop.getXspeed()+10;
    myYspeed = pop.getYspeed()+10;
    myColor = color(213, 255, 253);
    
}
  
  public void show() {
    fill(myColor);
    ellipse((float)getX(), (float)getY(), (float)10, (float)10);
  }
  
  public double getX() {
  return myCenterX;
}

public double getY() {
  return myCenterY;
}


  
}
