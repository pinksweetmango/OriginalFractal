public void setup() {
  background(171, 219, 227);
  size(500, 500);
  noStroke();
}

public void draw() {

  sun(30, 100, 100);
  sun(30, 400, 100);

  noFill();
  stroke(0);

  arc(80, 55, 40, 40, PI+QUARTER_PI, TWO_PI);
  arc(115, 65, 40, 40, PI+QUARTER_PI, TWO_PI);
  arc(80, 455, 40, 20, PI+QUARTER_PI, TWO_PI);
  arc(115, 465, 40, 20, PI+QUARTER_PI, TWO_PI);

  arc(150, 120, 20, 20, PI+QUARTER_PI, TWO_PI);
  arc(167, 125, 20, 20, PI+QUARTER_PI, TWO_PI);
  arc(150, 400, 20, 10, PI+QUARTER_PI, TWO_PI);
  arc(167, 400, 20, 10, PI+QUARTER_PI, TWO_PI);
  myFrac(250, 250, 480);
  myFrac2(250, 250, 480);
  myFrac1(0, 210, 500, 250);
  myFrac(250, 270, 200);
  myFrac2(250, 270, 200);
  myFrac(260, 270, 120);
  myFrac2(260, 270, 120);
  myFrac(370, 270, 60);
  myFrac2(370, 270, 60);
  myFrac1(0, 230, 500, 250);
}
public void myFrac(int x, int y, int siz) {
  if (siz > 5) {
    myFrac(x/2, y, siz/2);
  }
  stroke(0);
  fill(x+7, x+7, x+7);
  triangle(x, y, x+(siz/2), y+siz, x+siz, y);
  triangle(x, y, x+(siz/2), y-siz, x+siz, y);
}
public void myFrac2(int x, int y, int siz) {
  if (siz > 5) {
    myFrac2(x/2, y, siz/2);
  }
  stroke(0);
  fill(255-(x-7), 255-(x-7), 255-(x-7));
  triangle(x, y, x+(siz/2), y+siz, x+siz/2, y);
  triangle(x, y, x+(siz/2), y-siz, x+siz/2, y);

  fill(0, 53, 0);
  ellipse(x, y, siz/5, siz/20);
  fill(0, 120, 51);
  ellipse(x+x/5, y-y/20, siz/5, siz/7);

  stroke(139, 69, 19);
strokeWeight(3);
line(x+x/5, y-y/20, x+x/5, y-y/20+y/20);
strokeWeight(1);
  stroke(0);
//  rect(x+x/5, y-y/20, siz/20, siz/6);
  fill(0, 204, 102);
  ellipse(x+x/20, y, siz/20, siz/40);
}
public void myFrac1(int x, int y, int siz, int siz1) {
  if (y < 500) {
    myFrac1(x, y+40, siz, siz1);
  }
  noStroke();
  fill(0, 153, 153, 50);
  rect(x, y+40, siz, siz1);
}
public void sun(int x, int y, int siz) {
  if (siz > 50) {
    sun(x, y, siz-10);
  }
  stroke(255-x/10, 255-x/10, 255-x/10);
  fill(255-x/10, 255-x/10, 10, 10);
  ellipse(x, y, siz-10, siz-10);
  ellipse(x+20, y, siz-10, siz-10);
  ellipse(x-20, y, siz-10, siz-10);
  ellipse(x, y+20, siz-10, siz-10);
  ellipse(x, y-20, siz-10, siz-10);
  ellipse(x+15, y+15, siz-10, siz-10);
  ellipse(x-15, y-15, siz-10, siz-10);
  ellipse(x+15, y-15, siz-10, siz-10);
  ellipse(x-15, y+15, siz-10, siz-10);
}
