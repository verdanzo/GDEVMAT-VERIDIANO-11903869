class Walker {
  
  public PVector BPosition = new PVector();
  public PVector Spd = new PVector(5,8);
  
  public PVector WPosition = new PVector();

  void BounceRender(){
    
     background(255);
     fill(182,52,100);
     circle(BPosition.x, BPosition.y, 50);
     
  }
  
  void MoveAndBounce(){
    
    BPosition.add(Spd);
  
    if((BPosition.x > Window.right) || (BPosition.x < Window.left)){
      Spd.x *= -1;
    }
  
    if((BPosition.y > Window.top) || (BPosition.y < Window.bottom)){
      Spd.y *= -1;
    }
    
  }
  
  void WalkRender(){
    PVector RanRGB = new PVector(int (random(256)),int (random(256)),int (random(256)));
    PVector Alpha = new PVector(int (random(50,101)),0);
 
    fill(RanRGB.x,RanRGB.y,RanRGB.z,Alpha.x);
    circle(WPosition.x,WPosition.y,50);
  }
  
  void RanWalker(){
    //this is the same as directly using int RNG = int(random(9));
    //could not find another way to implement PVector tried using PVector.random2D could not make it work
    PVector WalkRNG = new PVector(int (random(9)),0);
    int RNG = int(WalkRNG.x);
    
    switch(RNG) {
      
      // UP,LEFT,DOWN,RIGHT
      
      case 0:
        WPosition.x+=15;
        break;
     
      case 1:
        WPosition.x-=15;
        break;
     
      case 2:
        WPosition.y+=15;
        break;
      
      case 3:
        WPosition.y-=15;
        break;
      
      // DIAGONAL MOVEMENT
      
      case 4:
        WPosition.x+=15; WPosition.y+=15;
        break;
      
      case 5:
        WPosition.x-=15; WPosition.y+=15;
        break;
      
      case 6:
        WPosition.x-=15; WPosition.y-=15;
        break;
      
      case 7:
        WPosition.x+=15; WPosition.y-=15;
        break;
      
    }
  }
  
  void RandomWalkBiased(){
    //this is the same as directly using int RNG = int(random(9));
    //could not find another way to implement PVector tried using PVector.random2D could not make it work;
    PVector BiasRNG = new PVector(int (random(9)),0);
    int biased = int(BiasRNG.x);

  switch(biased) {
      
      // UP,LEFT,DOWN,RIGHT
      //40 percent to walk right
      case 0:
        biased = 1;
        break;
        
      case 1:
        WPosition.x+=15;
        break;
     
     // 20 percent to walk left
      case 2:
        WPosition.x-=15;
        break;
     
     // 20 percent to walk up
      case 3:
        WPosition.y+=15;
        break;
      
      // 20 percent to walk down
      case 4:
        WPosition.y-=15;
        break;
      
    }
    
    
  }
  
}
