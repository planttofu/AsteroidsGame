Star[] starryNight = new Star[500];
Spaceship pop = new Spaceship();
public void setup() {
  size(800, 800);
  for(int i = 0; i < starryNight.length; i++) {
    starryNight[i] = new Star();
  }
}

public void draw() {
  background(0);
  for(int i = 0; i < starryNight.length; i++) {
    starryNight[i].show();
  } 
    pop.move();
    pop.show();
}
public void keyPressed(){
  if(keyPressed) {
  if(key == 'h' || key == 'H') {
     pop.setXspeed(0);
     pop.setYspeed(0);
     pop.setCenterX((int)(Math.random()*600)-100);
     pop.setCenterY((int)(Math.random()*400)-120);
     pop.setDirection((int)(Math.random()*500));
  }
  if(key == 'r' || key == 'R') {
    pop.turn(10);
  }
  if(key == 'l' || key == 'L') {
    pop.turn(-10);
  }
  if(key == 'a' || key == 'A') {
    pop.accelerate(3);
  }
}
}

