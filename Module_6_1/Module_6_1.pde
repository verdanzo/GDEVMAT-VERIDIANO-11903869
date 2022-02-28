void setup()
{
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);

}

PVector mousePos(){
  
float x = mouseX - Window.windowWidth / 2;
float y = -(mouseY - Window.windowHeight / 2);


return new PVector(x,y);
}


void draw() {
  
  println(mousePos().x + " " +mousePos().y);
  background(155);
  
  RedGlow();
  WhiteGlow();
  Handle();
  GrayHandle();
  
}

void RedGlow(){
  strokeWeight(20);
  stroke(255, 0 ,0 );
  
  PVector mouse = mousePos();
  float offset = 0.165;

  mouse.normalize().mult(300);
  
  line(mouse.x * offset, mouse.y * offset, mouse.x, mouse.y);
  line(-mouse.x * offset, -mouse.y * offset, -mouse.x, -mouse.y);
}

void WhiteGlow(){
  strokeWeight(5);
  stroke(255, 255 ,255);
  
  PVector mouse = mousePos();

  mouse.normalize().mult(295);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
}

void Handle(){
  strokeWeight(15);
  stroke(0, 0 ,0);
  
  PVector mouse = mousePos();

  mouse.normalize().mult(50);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
}

void GrayHandle(){
  strokeWeight(20);
  stroke(0, 0 ,0);
  
  PVector mouse = mousePos();

  mouse.normalize().mult(25);
  line(0, 0, mouse.x, mouse.y);
  line(0, 0, -mouse.x, -mouse.y);
}
