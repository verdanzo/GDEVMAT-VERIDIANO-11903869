void setup(){
  size(1280 , 720 , P3D);
  camera(0 , 0 , Window.eyeZ , 0 , 0 , 0 , 0 , -1 , 0);
}

Walker Walks = new Walker();
Walker WalkBias = new Walker();

void draw(){
  
  Walks.BounceRender();
  Walks.MoveAndBounce();
  
  
  Walks.RanWalker();
  Walks.WalkRender();
 
  WalkBias.RandomWalkBiased();
  WalkBias.WalkRender();
}
