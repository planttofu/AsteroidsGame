Star[] starryNight = new Star[500];
Spaceship pop = new Spaceship();

ArrayList <Asteroid> rocks = new ArrayList <Asteroid>() ;
ArrayList <funkyAsteroids> rock = new ArrayList <funkyAsteroids>();
ArrayList <Bullet> boom = new ArrayList <Bullet>();

public void setup() {
  size(800, 800);
  for(int i = 0; i < starryNight.length; i++) {
    starryNight[i] = new Star();
  }
   
   for(int n = 0; n < 20; n++) {
     rocks.add(n, new Asteroid());
   }
    
   for(int o = 0; o < 8; o++) {
     rock.add(o, new funkyAsteroids());
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
    
    for(int v = 0; v < boom.size(); v++) {
      boom.get(v).show();
      boom.get(v).move();
    }

   for(int i = 0; i < rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();

    float d = dist((float)pop.getX(), (float)pop.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(d < 30)
      rocks.remove(i);
  } 
    for(int j = 0; j < rock.size(); j++) {
    rock.get(j).show();
    rock.get(j).move();
    float d = dist((float)pop.getX(), (float)pop.getY(), (float)rock.get(j).getX(), (float)rock.get(j).getY());
    if(d < 30)
      rocks.remove(j);
      j--;
      break;
  } 
  
  for(int i = 0; i < rocks.size(); i++) {
      for(int v = 0; v < boom.size(); v++) {
      if (dist((float)boom.get(v).getX(), (float)boom.get(v).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY()) < 20) {
        boom.remove(v);  
        rocks.remove(i);
        v--;
        i--;
        break;  
        }
  
    }
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
  if (key == ' ') {
    boom.add(new Bullet(pop));
  }
}
}
