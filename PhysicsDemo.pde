//2D physics text

color bgColor = #46ADFF;
color groundColor = #00FF28;
color fgColor = #000000;

boolean b = true;

Turret turret;
HUD hud;

void setup() {
  size(720, 480);
  noStroke();
  rectMode(CENTER);

  turret = new Turret();
  hud = new HUD();
}

void draw() {
  background(bgColor);
  fill(groundColor);
  rect(width/2, height-15, width, -30); //Ground

  hud.render();

  turret.update();
  turret.render();

  if (keyPressed) {
    if (key == 'a') {
      turret.a -= 2;
    } else if (key == 'd') {
      turret.a += 2;
    } else if (key == ' ') {
      turret.shoot();
    }
  }
}



public float clamp(float val, float min, float max) {
  if (val > max) {
    return max;
  } else if (val < min) {
    return min;
  } else {
    return val;
  }
}