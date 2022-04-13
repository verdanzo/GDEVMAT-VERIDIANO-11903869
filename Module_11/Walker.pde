

class Walker {

  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  public float velimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  PVector RanRGB = new PVector(int (random(256)),int (random(256)),int (random(256)));
  float A = 150;
  
  public float gravitationalConstant = 1;
  
  
    
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
  
  public void CheckEdge(){  
    if (this.position.x > Window.right){
      this.position.x = Window.left;
    }
    else if (this.position.x < Window.left){
      this.position.x = Window.right;
    }
    
    if (this.position.y > Window.top){
      this.position.y = Window.bottom;
    }
    else if (this.position.y < Window.bottom){
      this.position.y = Window.top;
    } 
  }
  


  void display() {
    noStroke();
    fill(RanRGB.x,RanRGB.y,RanRGB.z, A);
    circle(position.x,position.y,scale);
  }

  public PVector CalculateAttraction(Walker walk){
    PVector force = PVector.sub(this.position, walk.position);
    float distance = force.mag();
    force.normalize();
    
    distance = constrain(distance,5,25);
    
    float strength = (this.gravitationalConstant * this.mass * walk.mass) / (distance * distance);
    force.mult(strength);
    return force; 
  }

}
