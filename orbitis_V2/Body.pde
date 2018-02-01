class Body{
  float r, angle = 0, speed, size;
  PVector origin;
  PVector location;
  
  
  Body(){
    r = ((width/10)*7)/2;
    location = new PVector();
    origin = new PVector();
    origin.x = width/2;
    origin.y = height/2;
    speed = 0.03;  
    size = 30;
}
    
  Body(PVector _ORIGIN, float _SPEED, float _RADIUS, float _SIZE){
    r = _RADIUS;
    size = _SIZE;
    origin = new PVector(_ORIGIN.x, _ORIGIN.y);
    location = new PVector();
    speed = _SPEED;  
  }
  
   void showMe(){
    float _X = map(location.x, -1, 1, origin.x-r, origin.x+r);
    float _Y = map(location.y, -1, 1, origin.y-r, origin.y+r);
    fill(47);
    ellipse(_X,_Y,size,size );
    noFill();
    ellipse(origin.x, origin.y, r*2,r*2);
  }
  
  
   void showMe(PVector _ORIGIN){
    float _X = map(location.x, -1, 1, _ORIGIN.x-r, _ORIGIN.x+r);
    float _Y = map(location.y, -1, 1, _ORIGIN.y-r, _ORIGIN.y+r);
    fill(47);
    ellipse(_X,_Y,size,size );
    noFill();
    ellipse(_ORIGIN.x, _ORIGIN.y, r*2,r*2);
  }
  
  void updateMe(){
    angle -= ((2*PI)/360) * speed;
    location.x = cos(angle);
    location.y = sin(angle);
  }
  
   void updateMe(PVector _ORIGIN){
    angle -= ((2*PI)/360) * speed;
    location.x = cos(angle);
    location.y = sin(angle);
    origin.x = _ORIGIN.x;
    origin.y = _ORIGIN.y;
    
  }
  
  PVector getMyCoordinates(){
    float _X = map(location.x, -1, 1, origin.x-r, origin.x+r);
    float _Y = map(location.y, -1, 1,  origin.y-r, origin.y+r);
    PVector loc = new PVector(_X, _Y);
    return loc;
  }
};