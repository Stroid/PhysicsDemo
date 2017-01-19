//2D physics text

color bgColor = #008AFF;
color groundColor = #00FF28;
color fgColor = #000000;

void setup() {
  size(720, 480);
  noStroke();
}

void draw() {
  background(bgColor);
  
  fill(groundColor);
  rect(0,height, width, -20);
}