class funkyAsteroids extends Asteroid {
  
public funkyAsteroids() {
    corners = 5;
    xCorners = new int [] {24, 20, 16, 28, 36};
    yCorners = new int [] {-32, 0, -36, -48, 0};
    myColor = color((int)(Math.random()*250), (int)(Math.random()*245), 255);
    }
  }
