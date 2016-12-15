
  class Stars
{
  int starX;
  int starY;
  int starSize;
  int starColor;

  public Stars()
  {
    starSize = (int)(Math.random()*10);
    starColor = color((int)(Math.random()*155+ 100), (int)(Math.random()*155 + 100), (int)(Math.random()*100 + 155));
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
  }

  public void show()
  {
    noStroke();
    fill(starColor);
    beginShape();
    vertex( starX);
    vertex( starX); 
    vertex(starY);
    vertex(starSize + 1);
    vertex(starSize);
    vertex(starSize - 1);
    endShape();
  }
}

