

class Walker {

  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  public float velimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  PVector RanRGB = new PVector(int (random(256)),int (random(256)),int (random(256)));
  float A = 100;
    
//float gravityPull = 9.8;

  public Walker() {
  }

  public void aForce(PVector force){
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f);
  }

  void update() {

    this.velocity.add(this.acceleration);
    this.velocity.limit(velimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
  }

  void display() {
    fill(RanRGB.x,RanRGB.y,RanRGB.z, A);
    circle(position.x,position.y,scale);
  }
  

}
