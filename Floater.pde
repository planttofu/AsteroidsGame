class Floater {
protected double myCenterX, myCenterY;

protected double myXspeed, myYspeed; 

protected double myPointDirection; 

protected int corners;

protected int[] xCorners;
protected int[] yCorners;

protected int myColor;

public void accelerate (double dAmount)   
 {              
    double dRadians = myPointDirection*(Math.PI/180);         
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
 } 
  
public void turn (double degreesOfRotation)   
{        
    myPointDirection += degreesOfRotation;   
  }
  
public void move ()   //move the floater in the current direction of travel
  {            
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
   
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    translate((float)myCenterX, (float)myCenterY);
     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    rotate(dRadians);

    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
  }
}
