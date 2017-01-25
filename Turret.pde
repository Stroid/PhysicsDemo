class Turret {
  float x, y, a;

  float w, h;

  ArrayList<Ball> balls = new ArrayList();

  int cooldown = 0;

  boolean armed = true;

  public Turret() {
    this.x = 20;
    this.y = height-35;
    this.a = 0;

    this.w = 30;
    this.h = 10;
  }

  public void update() {

    a = clamp(a, -180, 0);
    for (int I = 0; I < balls.size(); I++) {
      balls.get(I).update();
      balls.get(I).render();
      
      if(balls.get(I).hafLife < 0) balls.remove(I);
    }

    if (!armed) {
      cooldown--;
      if (cooldown <= 0) {
        armed = true;
        cooldown = 0;
      }
    }
  }
  public void render() {
    pushMatrix();
    translate(this.x, this.y);
    
    fill(0);
    rect(0, 0, 30, 10);
    rect(0, 0-5, 20, 5);
    ellipse(0, -10, 20, 20);
    rect(0,-19,7,7);


    pushMatrix();
    translate(0, -13);
    rotate(radians(a));
    rect(10, 0, 20, 10);
    
    popMatrix();
  
    if(armed)fill(0,255,0);
    else fill(255,0,0);
    rect(0,-5,5,5);

    popMatrix();
    
    float temp = 10;
    fill(0);
    ellipse(0,0,temp,temp);
  }

  public void shoot() {
    if (armed) {
      balls.add(new Ball(this.x, this.y-13, this.a));
      println("BOOM!");
      armed = false;
      cooldown = 0;
    }
  }
}