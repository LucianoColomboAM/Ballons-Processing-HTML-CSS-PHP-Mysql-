import spout.*;
Spout spout;
PGraphics pgr; // Graphics for demo
PFont mono;
int colores=0;

JSONArray values;
int id;
String mensajes;
StringList inventory;
String prueba;
String[] sortedInventory;
  //text(inventory.get(int(random(0,7))), width/2, height/2);
int a=0;


float n, incr, h, v;
boolean cw;


void setup() {
  mono = createFont("varsity.ttf", 15);
  textFont(mono);
  size(800,600,P2D);
  textureMode(NORMAL);
   spout = new Spout(this);
   //spout.setSenderName("Spout Processing Sender");
   spout.createSender("PV3");
   frameRate(30);
  
  values = loadJSONArray("mensajes1.json");
  inventory = new StringList();
  for (int i = 0; i < values.size(); i++)
  {
    JSONObject animal = values.getJSONObject(i); 
    id = animal.getInt("id");
    mensajes = animal.getString("mensajes_texto");
    inventory.append(mensajes);


    
  } 
}

void draw(){

  

segundodraw();
spout.sendTexture();
  
}


void segundodraw() {
  background(0);
  translate(width/2, height/2);

  h = map(sin(incr*100), -1, 1, 238, 300);
  noStroke();
  //stroke(h, 80, 80, 100);
  if (cw)incr += 0.0002;
  else incr -= 0.0002;
  // v = map(mouseX, 0, width, 1, 200);
  n = map(sin(incr*v), -1, 1, 300, 520);


 // for (int i = 0; i < inventory.size(); i += 2) {
  for (int i = 0; i < 75; i += 2) {
    rotate(incr);
    float x = cos(radians(i)) * n;
    float y = sin(radians(x)) * n;

    beginShape();
    vertex(-x, -y);
    vertex(y, x);
    endShape();

  
    if(second()%10==0){
     a=a+1;
     println(second());
     if (a==inventory.size()){
     a=0;
     }
    incr = random(-1, 1);
  v = random(1, 200);
  cw = !cw;
  colores++;

    }
   
   
    // stroke(255,255,255,50);
     noStroke();
     fill(0,random(0,200),random(150,255),25);
     circle(x+50,y,150);
         circle((-x)+50,-y,125);
     //   rect(x,y,100,-20);
     //    rect(-x,-y,100,-20); 
     fill(0,200,255,255);  
    text(inventory.get(a), (-x)-5, (-y)-5);
    text(inventory.get(a), (x)-5, (y)-5);
   
    
    
  }
  

}


void mousePressed() {
  incr = random(-1, 1);
  v = random(1, 200);
  cw = !cw;
}
