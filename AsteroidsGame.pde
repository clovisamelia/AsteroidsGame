Spaceship ufo; //your variable declarations here
Stars [] star;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> shoot = new ArrayList <Bullet>();

public void setup() 
{
  size (500,500); //your code here
  ufo = new Spaceship();
  star = new Stars[80];
  for(int i = 0; i < star.length; i++)
    {
      star[i] = new Stars();
    }
    for(int i = 0; i < 30; i++)
    {
      asteroids.add(new Asteroid());
    }
}

public void show()
{
	
	
}

public void draw() 
{
   background(0,0,30);
  for(int i = 0; i < star.length; i++)
    {
      star[i].show();
    }

  for(int i = 0; i < asteroids.size(); i++)
  {

    asteroids.get(i).move();
    asteroids.get(i).show();
  }


  for (int i = 0; i < shoot.size(); i++)
  {
    shoot.get(i).show();
    shoot.get(i).move();
  }
  for (int i = 0; i < shoot.size(); i++)
  {
    for (int k = 0; k < asteroids.size(); k++)
    {
      if(dist(shoot.get(i).getX(), shoot.get(i).getY(), asteroids.get(k).getX(), asteroids.get(k).getY()) < 25)
        asteroids.remove(k);
    }
  }
  ufo.show();
  ufo.move();
}

public void keyPressed()
{
  if (key == ' ')
  {
    shoot.add(new Bullet(ufo));
  }
  if (keyCode == 38)
  {
    ufo.accelerate(.2);
  }
  if (keyCode == 40)
  {
    ufo.accelerate(-.2);
  }
  if (keyCode == 37)
  {
    ufo.turn(-12);
  }
  if (keyCode == 39)
  {
    ufo.turn(10);
  }
  if (keyCode == 13)
  {
    ufo.setX((int)(Math.random()*500));
    ufo.setY((int)(Math.random()*500));
    ufo.setDirectionX(0);
    ufo.setDirectionY(0);
    ufo.setPointDirection((int)(Math.random()*360));
  }
}








