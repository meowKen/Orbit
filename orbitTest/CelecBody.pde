class CelesBody{
  float ox = 0, oy = 0;          //coord x,y du centre du cercle
  float ax, ay, a, as;   //coord x,y du point, angle, et compteur d'angle (speed)
  float r = 1;           //rayon du cercle
  
  //constructor
  CelesBody(){
    a = 0;
    as= 1;
  }
  
  //methods
  void updateAngle(){
    if(as>1800){
      as = 1; a = 0;
    } else {
      a = (as-1)*((2*PI)/1800);
      as+=1;
    }
    println(as+" "+a);
  }
  
  void updateCoord(){
    ax = cos(a);
    ay = sin(a);
  }
  
  void step(){
    updateAngle();
    updateCoord();
  }
  
  void show(){
    float _X, _Y;
    _X = map(ax, -1,1,width/2-(width/5)*2,width/2 + (width/5)*2);
    _Y = map(ay, -1,1,height/2 + (height/5)*2, height/2-(height/5)*2);
    fill(0,255,0);
    stroke(0);
    ellipse(_X, _Y, 32,32);
    //println(_X +" "+_Y);
  }
  
  
};