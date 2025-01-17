Star[] starryNight = new Star[500];
Spaceship pop = new Spaceship();

ArrayList <Asteroid> rocks = new ArrayList <Asteroid>() ;
ArrayList <Bullet> boom = new ArrayList <Bullet>();

public void setup() {
  size(800, 800);
  for(int i = 0; i < starryNight.length; i++) {
    starryNight[i] = new Star();
  }
   
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
    
   for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)pop.getX(), (float)pop.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(d < 30)
      rocks.remove(i);
  } 

for(int v = 0; v < boom.size(); v++) {
      boom.get(v).move();
      boom.get(v).show();
  for(int i = 0; i < rocks.size(); i++) {
      if (dist((float)boom.get(v).getX(), (float)boom.get(v).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY()) < 20) {  
        rocks.remove(i);
        boom.remove(v);
        i--;
        v--;
        break;  
        }
  
    }
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
  if (key == ' ' || key == 's') {
    boom.add(new Bullet(pop));
  }
}
}
