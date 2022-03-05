
//Objects and Array
Walker Hole = new Walker();
Walker[] other = new Walker[100]; 

int timer = 0;

void setup (){
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0); 
 
 //initializing Other Array and Other Object setup
 for(int i = 0; i < other.length; i++){
    other[i] = new Walker();
    other[i].OtherSetup();
  }
  
}

void draw () {
  
  background(0);
  timer++;
  
  //Other Matter Spawn and Movement
  for(int i = 0; i < other.length; i++){
    other[i].OtherRender();  
    
    //Tried using the example in the instructions but it would not work properly for me
    //found this works as well
    other[i].posX += (Hole.posX - other[i].posX) * 0.015;
    other[i].posY += (Hole.posY - other[i].posY) * 0.015;
        
    //float otherx = other[i].posX;
    //float othery = other[i].posY;
  }
  
  //Reset BHole
  if ( timer >= 270 ){
    setup();
    timer = 0;
  }

  //WhiteHole Render
  Hole.render();

}
