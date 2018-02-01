Body B;
Body Bb;
Body Bbb;

void setup(){
  size(500,500);
  B = new Body();
  B.updateMe();
  Bb = new Body(B.getMyCoordinates(), B.speed*50, 50, 18);
  Bb.updateMe();
  Bbb = new Body(Bb.getMyCoordinates(), Bb.speed*2, 25, 6);
}

void draw(){
  background(200);
  B.updateMe();
  Bb.updateMe();
  Bbb.updateMe(Bb.getMyCoordinates());
  B.showMe();
  Bb.showMe(B.getMyCoordinates());
  Bbb.showMe();
}