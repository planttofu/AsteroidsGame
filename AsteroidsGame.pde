Star[] starryNight = new Star[500];
Spaceship pop = new Spaceship();

ArrayList <Asteroid> rocks;

public void setup() {
  size(800, 800);
  for(int i = 0; i < starryNight.length; i++) {
    starryNight[i] = new Star();
  }
   rocks = new ArrayList <Asteroid>() ;
   for(int n = 0; n < 25; n++) {
     rocks.add(n, new Asteroid());
   }
}

public void draw() {
  background(0);
  frameRate(20);
  for(int i = 0; i < starryNight.length; i++) {
    starryNight[i].show();
  } 
  
    pop.move();
    pop.show();

   for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();

    float d = dist((float)pop.getX(), (float)pop.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(d < 30)
      rocks.remove(i);
  } 

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

