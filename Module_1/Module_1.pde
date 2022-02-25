
float t = 0;

void setup (){
  size(1280, 720, P3D);
  camera( 0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw (){
  background(10);
  CartesianPlane();
  Function1();
  Function2();
  sinewave();
  
  t += .1;
  
}

void CartesianPlane(){
  circle( 0, 0, 5);
  strokeWeight(2);
  color white = color ( 255, 255, 255);
  fill(white);
  stroke(white);
  line( -300, 0, 300, 0);
  line( 0, -300, 0, 300);
  
  for (int i = -300; i < 310; i+=10){
    line( i, -5, i, 5);
    line( -5, i, 5, i);
  }
}

void Function1(){
  // f(x) = x*x - 15(x) - 3
  color yellow = color ( 255, 255, 0);
  fill(yellow);
  noStroke();
  for (float x = -300; x <= 300; x+=0.1f){
    circle(x, ((float)Math.pow(x , 2) - (15 * x) - 3), 3);
  }
}

void Function2(){
  // f(x) = -5x + 30;
  color purple = color ( 128, 0, 128);
  fill(purple);
  noStroke();
  for (float x = -300; x <= 300; x+=0.1f){
    circle(x, (-5*x) + 30, 3);
  }
}

void sinewave(){
 color purple = color ( 0, 0, 225);
  fill(purple);
  noStroke();
  
  float frequency = .10;
  float amplitude = 50;
  
 for(float x = -300; x <= 300; x+=0.1f){
   circle(x, (float)Math.sin(x * frequency + t) * amplitude, 5);
 }
}
