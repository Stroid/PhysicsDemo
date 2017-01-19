class Ball{
  
  PVector pos;
  PVector vel;
  PVector acc;
  
  float r;
  
  public Ball(float x, float y, float r){
    this.pos = new PVector(x,y);
    this.vel = new PVector();
    this.acc = new PVector();
    
  }
  
  public void update(){
    this.vel.add(acc);
    this.pos.add(vel);
    this.acc.mult(0);
  }
  
  public void render(){
  
  }
  
  public void addForce(PVector force){
    this.acc.add(force);
  }

}