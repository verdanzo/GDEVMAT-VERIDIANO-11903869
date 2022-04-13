Liquid water = new Liquid(0,-100,Window.right,Window.bottom,0.1f);
Walker Walk = new Walker();
Walker[] other = new Walker[10]; 
PVector wind = new PVector(0.1,0);
PVector[] dForce = new PVector[10];
float[] speed = new float[10];
float[] dragMagnitude = new float[10];

  void setup (){
  size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  for(int i = 0; i < other.length; i++){
    
    other[i] = new Walker();    
    float posX = 2 * (Window.heightPx/12) * ( i-4.5f );
    other[i].position = new PVector (posX , 200);
    other[i].mass = 10-i;
    other[i].scale = other[i].mass * 15;
    
  }
  }
    
  void draw(){
    background(255);
    water.render();
      
    for(int i = 0; i < other.length; i++){
    PVector gravity = new PVector(0, -0.15f * other[i].mass);
    
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = other[i].velocity.copy();
    other[i].aForce(friction.mult(-1).normalize().mult(frictionMagnitude));
    
    other[i].aForce(wind);
    other[i].aForce(gravity);
    other[i].display();
    other[i].update();
    
    if(other[i].position.y <= Window.bottom){
      other[i].position.y = Window.bottom;
      other[i].velocity.y *= -1;
    }
    if(other[i].position.x >= Window.right){
      other[i].position.x = Window.right;
      other[i].velocity.x *= -1;
    }
   
    speed[i] = other[i].velocity.mag();
    dragMagnitude[i] = water.cd * speed[i] * speed[i];
    
    dForce[i] = other[i].velocity.copy().mult(-1);
    
    dForce[i].normalize();
    dForce[i].mult(dragMagnitude[i]);
    
    //since i used arrays to create the other circles. the class other(array) is not usable in the liquid class
    //this is a fix i did so it is still able to detect the ocean we have created
    //this is done so by making the x,y variables of liquid into a PVecter position
    if(other[i].position.x > water.wposition.x - water.horizon &&
       other[i].position.x < water.wposition.x + water.horizon &&
       other[i].position.y < water.wposition.y - 100){ //due to the changes to make this work "-100" is used to lower the initial render of the box (hitbox)
    //if(other[i].position.y < 0){
      
      other[i].aForce(dForce[i]);   
      
    }
    
    
    
    }
    
    
    
  }

  
