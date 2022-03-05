class Walker{
  
  //Mouse Position  
  PVector mousePos(){
  
    float x = mouseX - Window.windowWidth / 2;
    float y = -(mouseY - Window.windowHeight / 2);

  return new PVector(x,y);
  }
    
  //Position & Scale of other objects
  public float scale = 0;
  
  public float posX = 0;
  public float posY = 0;

  //Random Colors
  PVector RanRGB = new PVector(int (random(256)),int (random(256)),int (random(256)));
  float A = 80;
    
  //Render for White Hole      
  public void render(){
    fill(255);
    PVector mouse = mousePos();
    posX = mouse.x;
    posY = mouse.y;
    circle(mouse.x,mouse.y,50);
  }
  
  //Setup for Other Object Position and scale
  public void OtherSetup(){
    float gaussian = randomGaussian();
    float standardDeviation = 150;
    float mean = 0;
    
    float gauSize = randomGaussian();
    float standardSize = int (random(25));
    float meanSize = int (random(0));
    scale = standardSize * gauSize + meanSize;
   
    posX = standardDeviation * gaussian + mean;
    posY = int(random(-360,360));
  }
  
  //Other Object Render
  public void OtherRender() {
     
    noStroke();
    
    fill(RanRGB.x,RanRGB.y,RanRGB.z, A);
    circle(posX, posY, scale);
    
  }
  

}
