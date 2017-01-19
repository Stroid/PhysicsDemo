class Ball {

  PVector pos;
  PVector vel;
  PVector acc;

  float r;

  P
  public Ball(float x, float y, float r) {
    this.pos = new PVector(x, y);
    this.vel = new PVector();
    this.acc = new PVector();
    
    this.r = r;
  }

  public void update() {
    this.vel.add(acc);
    this.pos.add(vel);
    this.acc.mult(0);
    
    
  }

  public void render() {
    fill(0);
    ellipse(this.pos.x, this.pos.y, this.r*2, this.r*2);
  }

  public void addForce(PVector force) {
    this.acc.add(force);
  }
}