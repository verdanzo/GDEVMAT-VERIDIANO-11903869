public class Walker{
  
  public float x;
  public float y;
  
  public float scale;
  
  //time
  
  public float tx = 0;
  public float ty = 10000;
  
  public float tScale = 150;
  
  //Color
  
  public float R;
  public float G;
  public float B;

  public float tR = 255;
  public float tG = 123;
  public float tB = 50;
  
  void render(){
    
    fill(R,G,B);
    circle(x, y, scale);
    
  }
  
  void PerlinWalk (){
  
    x = map(noise(tx), 0, 1, -640 , 640);
    y = map(noise(ty), 0, 1, -360 , 360);
    
    tx += 0.01f;
    ty += 0.01f;
    
    scale = map(noise(tScale), 0, 1, 5, 150);
    
    tScale += 0.01f;
    
    R = map(noise(tR), 0, 1, 0, 255);
    G = map(noise(tG), 0, 1, 0, 255);
    B = map(noise(tB), 0, 1, 0, 255);
    
    tR += 0.01f;
    tG += 0.01f;
    tB += 0.01f;
    
  }
  
}
