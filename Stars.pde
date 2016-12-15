
  class Stars
{
  int starX;
  int starY;
  int starSize;
  int starColor;
  int different;
  int evenMore;

  public Stars()
  {
    starSize = (int)(Math.random()*500);
    starColor = color((int)(Math.random()*155+ 100), (int)(Math.random()*155 + 100), (int)(Math.random()*100 + 155));
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    different = (int)(Math.random()*5);
    evenMore = (int)(Math.random()*11);
  }

  public void show()
  {
    noStroke();
    fill(starColor);
    beginShape();
      vertex( starX, starY); 
      vertex(starX + 4, starY + 4);
      vertex(starX + different,starY - 5);
      vertex( starX, starY);
      vertex(starX - different,starY + different);
      vertex(starX + 4, starY + 4);
      vertex(starX - evenMore, starY- 6);
    endShape();
  }
}

