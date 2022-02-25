class Walker {
  
float x = 0;
float y = 0;

  void render(){
    int R = int (random(256));
    int G = int (random(256));
    int B = int (random(256));
    int A = int (random(50,101));
    
    fill(R,G,B,A);
    circle(x,y,50);
  }

  void RanWalker(){
    int RNG = int(random(9));
    
    switch(RNG) {
      
      // UP,LEFT,DOWN,RIGHT
      
      case 0:
        x+=15;
        break;
     
      case 1:
        x-=15;
        break;
     
      case 2:
        y+=15;
        break;
      
      case 3:
        y-=15;
        break;
      
      // DIAGONAL MOVEMENT
      
      case 4:
        x+=15; y+=15;
        break;
      
      case 5:
        x-=15; y+=15;
        break;
      
      case 6:
        x-=15; y-=15;
        break;
      
      case 7:
        x+=15; y-=15;
        break;
      
    }
  }


  //Biased to walk Right
  void RandomWalkBiased(){
    
    int biased = int(random(5));

  switch(biased) {
      
      // UP,LEFT,DOWN,RIGHT
      //40 percent to walk right
      case 0:
        biased = 1;
        break;
        
      case 1:
        x+=15;
        break;
     
     // 20 percent to walk left
      case 2:
        x-=15;
        break;
     
     // 20 percent to walk up
      case 3:
        y+=15;
        break;
      
      // 20 percent to walk down
      case 4:
        y-=15;
        break;
      
      
  
      
    }
    
    
  }



}
