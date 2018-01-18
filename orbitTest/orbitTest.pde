CelesBody moon;


void setup(){
  moon = new CelesBody();

  size(800,800);
}

void draw(){
  background(47);
  noFill();
  stroke(200);
  ellipse(width/2, height/2, (width/5)*4,(height/5)*4);
  moon.step();
  moon.show();
}

void mouseClicked(){

}