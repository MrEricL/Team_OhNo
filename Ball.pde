class Ball {
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  float state;
  float decrease; //when to decrease



Ball(){
  x=random(width);
  y=random(height);
  rad = 10;
  c =color(random(256),random(256),random(256));
  dx=random(-5,5);
  dy=random(-5,5);
  state = 0;
  decrease=0;
}

Ball(int xcor, int ycor){
  x=xcor;
  y=ycor;
  rad = 10;
  c =color(random(256),random(256),random(256));
  dx=random(-5,5);
  dy=random(-5,5);
  state = 0;
  decrease=0;
}

void move(){

  x=x+dx;
  y=y+dy;
  bounce();
  
}

void bounce(){
  if (x>=width || x <= 0) dx=dx*-1;
  else if (y>=height || y <= 0) dy =dy*-1;
  
}

void display(){
  fill(c);
  stroke(c);
  ellipse (x,y,rad + 10,rad + 10);
  
  
}

void changeState(){
  state = 1; 
}
float getState(){
   return state;
}

void reaction(){
  System.out.println(rad);
  if (state == 13) decrease+=0.25;
  if (decrease ==0) {
    rad=rad+state; //using state for size increase
    state=state+0.25;   
  }
  else {
    rad=rad-decrease;
  }
  ellipse(x,y,rad,rad);
    
}

boolean detectCollision(){
return false;
}

float getRad(){
  return rad;
  
}



}