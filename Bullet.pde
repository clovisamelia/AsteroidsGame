
class Bullet extends Floater
{
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

  public Bullet(Spaceship shoots)
  {
  	myCenterX = shoots.getX();
  	myCenterY = shoots.getY();
  	myPointDirection = shoots.getPointDirection();
  	double radius = myPointDirection*(Math.PI/180);
  	myDirectionX = 4 * Math.cos(radius) + shoots.getDirectionX();
  	myDirectionY = 4 * Math.sin(radius) + shoots.getDirectionY();

  }

  public void show()
  {
  	stroke(240, 200, 200);
  	fill(240, 150, 150);
  	ellipse((float)myCenterX, (float)myCenterY, 9, 6);
  }
  public void move()
  {
  	myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
}
