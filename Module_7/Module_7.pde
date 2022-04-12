Walker mover = new Walker();
Walker[] other = new Walker[100]; 

void setup() {
  size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < other.length; i++){
    other[i] = new Walker();
    other[i].OtherSetup();
  }
}

void draw() {
  background(0);
  
  //Code from Midterms
  for(int i = 0; i < other.length; i++){
    other[i].update();  
    other[i].display();
    other[i].CheckEdge();
  }
  
  
}
