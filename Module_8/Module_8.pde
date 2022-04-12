 
  Walker MyWalk = new Walker();
  //Walker HWalk =  new Walker();
  PVector gravity = new PVector(0,-0.4);
  
  PVector wind = new PVector(0.15,0);
  
  Walker[] other = new Walker[11]; 
  
  void setup (){
  size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //HWalk.position.y = -50;
  //HWalk.mass = 5;
  
  for(int i = 0; i < other.length; i++){
  
    other[i] = new Walker();    
    other[i].mass = i;
    other[i].scale = other[i].mass * 15;
    other[i].position.x = -500;
    other[i].position.y = 200;
  }
  
  
  }
    


  void draw(){
    background(80);
    
    for(int i = 0; i < other.length; i++){
    other[i].update();  
    other[i].display();
    other[i].aForce(wind);
    other[i].aForce(gravity);
    if (other[i].position.x > Window.right){
      other[i].velocity.x *= -1;
    }
    if (other[i].position.y < Window.bottom){
      other[i].velocity.y *= -1;
    } 
  }

    
    //HWalk.display();
    //HWalk.update();
    //HWalk.aForce(wind);
  }
