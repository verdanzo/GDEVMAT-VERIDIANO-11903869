int t = 0;

void setup () {
  size(1020 , 720 , P3D); 
  camera(0 , 0 , -(height/2.0) / tan(PI * 30.0 / 180.0), 0 , 0 , 0 , 0 , -1 , 0);
  background(0);  
}

void draw(){
  
  t++;
  
  //gaus
  
  float gaussian = randomGaussian();
  float standardDeviation = 100;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  
  //gaus size

  float gauSize = randomGaussian();
  float standardSize = int (random(100));
  float meanSize = int (random(50));
  float size = standardSize * gauSize + meanSize;
  
  //RNG
  //colors
  int R = int (random(256));
  int G = int (random(256));
  int B = int (random(256));
  int A = int (random(10,101));
  
  int y = int (random(-height,height));
  
  
  
  
  noStroke();
  fill  ( R , G , B , A);
  circle(x,y,size);
  
  if(t == 300){
  clear();
  t = 0;
  }
}
