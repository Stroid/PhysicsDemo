//2D physics text

color bgColor = #46ADFF;
color groundColor = #00FF28;
color fgColor = #000000;

Turret turret;

void setup() {
  size(720, 480);
  noStroke();
  
  turret = new Turret(width/2,height/2);
}

void draw() {
  background(bgColor);
  fill(groundColor);
  rect(0,height, width, -30);
  
  turret.update();
  turret.render();
  
}