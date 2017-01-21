class Turret {
  float x, y, a;

  float w, h;

  ArrayList<Ball> Balls = new ArrayList();

  public Turret(float x, float y) {
    this.x = x;
    this.y = y;
    this.a = a;
  }

  public void update() {
  }
  public void render() {
    fill(0);
    rect(x-w/2, y-h/2, w, h);
  }

  public void rederect(float a) {
    this.a += a;
  }

  public void shoot() {
    Balls.add(new Ball(this.x, this.y, -45));
  }
}