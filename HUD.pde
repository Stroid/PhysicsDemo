class HUD {
  public void render() {
    fill(255);
    textSize(16);
    text(-int(turret.a), 10, 20);
    text(turret.balls.size(), 40, 20);
    text(turret.cooldown, 70, 20);
  }
}