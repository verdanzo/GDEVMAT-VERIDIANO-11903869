

class Walker {

  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration;
  public float velimit = 10;
  public float scale = 15;

  public Walker() {
  }

  void update() {
    
    
    float x = mouseX - Window.windowWidth / 2;
    float y = -(mouseY - Window.windowHeight / 2);
    
    //https://processing.org/examples/accelerationwithvectors.html Reference
    PVector mouse = new PVector(x,y);
    PVector acceleration = PVector.sub(mouse,position);
    
    acceleration.setMag(0.2);
    
    velocity.add(acceleration);
    velocity.limit(velimit);
    position.add(velocity);
  }

  void display() {
    circle(position.x,position.y,scale);
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


  public void OtherSetup(){
    float gaussian = randomGaussian();
    float standardDeviation = 150;
    float mean = 0;
    
    float gauSize = randomGaussian();
    float standardSize = int (random(25));
    float meanSize = int (random(0));
    scale = standardSize * gauSize + meanSize;
   
    position.x = standardDeviation * gaussian + mean;
    position.y = int(random(-360,360));
  }
}
