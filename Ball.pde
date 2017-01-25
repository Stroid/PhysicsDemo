class Ball { //<>//

  PVector pos;
  PVector vel;
  PVector acc;

  float r;
  float d;

  PVector gravity;
  PVector wind;

  Boolean landed = false;

  int hafLife = 200;

  public Ball(float x, float y, float a) {
    this.pos = new PVector(x, y);
    this.vel = PVector.fromAngle(radians(a));
    this.acc = new PVector();
    this.r = 5;
    this.d = r*2;

    this.vel.setMag(14);

    this.gravity = new PVector(0, 0.2);
    this.wind = new PVector(-0.05, 0);
  }

  public void update() {
    this.vel.add(acc);
    this.pos.add(vel);
    this.acc.mult(0);

    if (this.pos.y > height-20-r) {
      landed = true;
    }

    this.pos.y = clamp(this.pos.y, r, height-20-r);
    this.pos.x = clamp(this.pos.x, r, width-r);

    if (! this.landed) {
      this.addForce(gravity);
      this.addForce(wind);
    } else {
      this.vel.mult(0);
    }

    hafLife--;
  }

  public void render() {
    fill(0);
    ellipse(this.pos.x, this.pos.y, this.d, this.d);
  }

  public void addForce(PVector force) {
    this.acc.add(force);
  }
}