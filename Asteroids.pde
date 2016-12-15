
class Asteroid extends Floater
{
    
    private int rotateAs;
    public void setX(int x) {myCenterX = x;} 
    public int getX() {return (int)myCenterX;}   
    public void setY(int y) {myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x) {myDirectionX = x;} 
    public double getDirectionX() {return myDirectionX;}  
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY() {return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}
    public double getPointDirection() {return myPointDirection;}

    public Asteroid()
    {
    
   	  myColor = color(61, 100, 70);   
      corners = 12;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 0;
      yCorners[0] = 7;
      xCorners[1] = 1;
      yCorners[1] = 1;
      xCorners[2] = 3;
      yCorners[2] = 7;
      xCorners[3] = 9;
      yCorners[3] = 5;
      xCorners[4] = 8;
      yCorners[4] = 4;
      xCorners[5] = 6;
      yCorners[5] = -1;
      xCorners[6] = 11;
      yCorners[6] = -6;
      xCorners[7] = 8;
      yCorners[7] = -8;
      xCorners[8] = 5;
      yCorners[8] = -10;
      xCorners[9] = 2;
      yCorners[9] = -14;
      xCorners[10] = -4;
      yCorners[10] = -12;
      xCorners[11] = -9;
      yCorners[11] = -12;
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      rotateAs = (int)((Math.random()*8)-3);
    }

    public void move()
    {
      rotate(rotateAs);
      super.move();
      myCenterX += Math.cos(rotateAs);
      myCenterY += Math.sin(rotateAs);
    }

}
