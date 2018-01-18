class Point{

  float x;
  float y;
  float size;
  float speed;
  float speedCoef;
  float age = 0;
  
  //constructors
  ///////////////
  Point(){
    x = random(width);
    y = random(height);
    size = 64;
    speedCoef = 100;
    speed = 1/speedCoef;
    
  }
  
  Point(float x_, float y_){
    x = x_;
    y = y_;
    size = 64;
    speedCoef = 100;
    speed = 1/speedCoef;
  }
  
  //methods
  ////////////////
  void show(){
    ellipse(x,y,size-speed,size-speed);
  }
  //decremente speedcoef to accelerate the size reduction over time
  void update(){
    if (speedCoef>10){
    speedCoef--;
    }
  }
  
  
};


  