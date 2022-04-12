 
  Walker MyWalk = new Walker();
  //Walker HWalk =  new Walker();
  
  
  PVector wind = new PVector(0.2,0);
  
  Walker[] other = new Walker[8]; 
  
  void setup (){
  size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //HWalk.position.y = -50;
  //HWalk.mass = 5;
  
  for(int i = 0; i < other.length; i++){
    
    other[i] = new Walker();    
    int posY = 2 * (Window.windowHeight/20) * ( i-3 );
    other[i].position = new PVector (-500 , posY);
    other[i].mass = 9-i;
    other[i].scale = other[i].mass * 15;
    
  }
  
  
  }
    
  void draw(){
    background(80);
    line(0, -360, 0, 360);
   
    
    for(int i = 0; i < other.length; i++){
      
      float mew = 0.01f;
      float normal = 1;
      float frictionMagnitude = mew * normal;
      PVector friction = other[i].velocity.copy();
      friction.mult(-1);
      friction.normalize();
      friction.mult(frictionMagnitude);
      other[i].aForce(friction);
      
      //uncomment for bonus
      //PVector gravity = new PVector(0,-0.15 * other[i].mass );
      //other[i].aForce(gravity);
      
    other[i].update();  
    other[i].display();
    other[i].aForce(wind);
    
    
    if (other[i].position.x >= Window.right){
      other[i].position.x = Window.right;
      other[i].velocity.x *= -1;
    }
    if (other[i].position.y <= Window.bottom){
      other[i].position.y = Window.bottom;
      other[i].velocity.y *= -1;
    } 
    
    if(other[i].position.x >= 0){
    // friction = -1 * mew * N * v;
      mew = 0.4f;
      normal = 1;
      frictionMagnitude = mew * normal;
      friction = other[i].velocity.copy();
      friction.mult(-1);
      friction.normalize();
      friction.mult(frictionMagnitude);
      other[i].aForce(friction);
    }
  }
  
  if (mousePressed == true) {
    setup();
  } 

    
    //HWalk.display();
    //HWalk.update();
    //HWalk.aForce(wind);
  }
