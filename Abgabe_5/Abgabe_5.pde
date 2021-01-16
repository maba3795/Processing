
//Drawing the Cylinder, Cone and Axes
float topRadius = 20;
float verticalSides = 5;
float topRadiusCylinder = 20;
float bottomRadius = 0;
float hoehe  = 150 ; 
int mantel = 8;

int trees = 5;
int dis = 60;

float camX,camY,camZ,posX,posY,posZ;

color yellow = color(173,255,47);
color brown = color(139,69,19);

Cone cone = new Cone();
Cylinder cylinder = new Cylinder();
Axes axes = new Axes();
tree tree = new tree();

void setup() {
  size(1200, 1000, P3D);
  surface.setResizable(true);
  
  camX = 600;
  camY = 500;
  camZ = 600;
}
 void keyPressed(){
   if(keyPressed){
     if(key == 'x'){
       camera(0, 0, 0, 0, 0, 0, 0, 1, 0);
     }
   }
 
 }

void drive() { 
  posX += random(-4,3);
 posY += random(-4,3);
  posZ += random(-4,3);
}
  void updateCameraLocation() {
    if(keyPressed){
  if (key == 'a') camX -= 5;
  if (key == 'd') camX += 5;
  if (key == 'w') camY -= 5;
  if (key == 's') camY += 5;
  if (key == '+') camZ -= 5;
  if (key == '-') camZ += 5;
   if(key == 'x') camera(300, 0, 100, 0, 0, 0, 0, 1, 0);
     
    }
}
void draw() {
  updateCameraLocation();
  
  camera(camX, camY, camZ, mouseX, mouseY, 0, 0, 1, 0);
  
  
  background(255);
  noStroke();
  translate(width/2, height/2);
  //scale(2);
  
 if(key=='e'){
   drive();
 }
 
   



// make the structure visible
  if (mousePressed == true) { 
    background(255);
    stroke(2);
    //stroke strobe
    noFill(); //mesh viewable
  } else {
    fill(255);
  }
    
    
  
if(key == 'o'){
  
axes.render();

}
for(int i = -5;i<trees;i++){
  for(int j = -5;j<trees;j++){
    translate(posX,posY,posZ);
    int x = i * dis;
    int y = j * dis;
 
pushMatrix();
fill(brown);
translate(x,0,y);
cylinder.render(5, 5, -100, 15, 6);
fill(yellow);
translate(0,-40,0);
cone.render(30, 0, -20, 10);
translate(0,-30,0);
cone.render(20, 0, -20, 10);
translate(0,-30,0);
cone.render(10, 0, -20, 10);


popMatrix();

}
}
 
}
//key actions for the variables to change the form
