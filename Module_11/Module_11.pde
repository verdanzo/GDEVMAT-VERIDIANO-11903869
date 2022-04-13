Walker[] Walk = new Walker[10];
Walker[] Big = new Walker[5];
Walker[] Small = new Walker[5]; 

Walker big = new Walker();
Walker small = new Walker(); 

float[] branx = new float[5];
float[] brany = new float[5];

float[] sranx = new float[5];
float[] srany = new float[5];

void setup() {
    size(1280,720,P3D);
    camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
    
    for(int i = 0; i < Big.length; i++){
    branx[i] = int(random(-640,640));
    brany[i] = int(random(-360,360)); 
    
    sranx[i] = int(random(-640,640));
    srany[i] = int(random(-360,360)); 
    Big[i] = new Walker();   
    Big[i].position = new PVector(branx[i],brany[i]);
    Big[i].mass = 10-i;
    Big[i].scale = Big[i].mass * 10;
    
    Small[i] = new Walker(); 
    Small[i].position = new PVector(sranx[i],srany[i]);
    Small[i].mass = 5-i;
    Small[i].scale = Small[i].mass * 10;
    }

  }


void draw() {
    background(255);
   
    for(int i = 0; i < Big.length; i++){
      Big[i].update();
      Big[i].display();
      //Big[i].aForce(Small[i].CalculateAttraction(Big[i]));
        for(int j = 0; j < Small.length; j++){
           Small[j].update();
           Small[j].display();
           //Small[j].aForce(Big[j].CalculateAttraction(Small[j]));
           
           if(i!=j){
             Big[i].aForce(Small[j].CalculateAttraction(Big[i]));
             Small[i].aForce(Big[j].CalculateAttraction(Small[i]));
           }
           
        } 
   }
}
