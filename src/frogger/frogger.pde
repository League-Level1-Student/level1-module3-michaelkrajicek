static final int WIDTH = 800;
static final int HEIGHT = 600;
int x = 400;
int y = 560;



int a = (int)random(0,400);
int b = (int)random(0,400);
int c = (int)random(0,400);
int d = (int)random(0,400);

int s = (int) random(0,2);
int t = (int) random(0,2);
int u = (int) random(0,2);
int v = (int) random(0,2);


  Car c1;
  Car c2; 
  Car c3;
  Car c4;

public void settings() {
  size(WIDTH, HEIGHT);
}


public void setup() {
  
c1 = new Car(a,52, 150, 5);
c2 = new Car(b,175, 150, 5);
c3 = new Car(c,300, 150, 5);
c4 = new Car(d,425, 150, 5);
  
}


public void draw() {
  background(52, 198, 235);
  
  if(s == 0){
   c1.moveLeft(); 
  }
  
  if(s == 1){
   c1.moveRight(); 
  }
  
  if(t == 0){
   c2.moveLeft(); 
  }
  
  if(t == 1){
   c2.moveRight(); 
  }
  
  if(u == 0){
   c3.moveLeft(); 
  }
  
  if(u == 1){
   c3.moveRight(); 
  }
  
  if(v == 0){
   c4.moveLeft(); 
  }
  
  if(v == 1){
   c4.moveRight(); 
  }
  
  c1.display();
  c2.display();
  c3.display();
  c4.display();
  
 

  fill(38, 173, 49);
  ellipse(x, y, 50, 50);

if (x <= 25){
  x = 25;
}

if (x >= 775){
  x = 775;
}

if (y <= 25){
  y = 25;
}

if (y >= 575){
  y = 575;
}

if (intersects(c1)){
 y = 600;
 
}
  
  if (intersects(c2)){
 y = 600; 
 
  }
 
 if (intersects(c3)){
 y = 600; 
 
 }
 
 if (intersects(c4)){
 y = 600; 
  
}


}

boolean intersects(Car car) {
 if ((y + 25 > car.getY() && y -25 < car.getY()+car.sizeHeight) &&
                (x + 25 > car.getX() && x - 25 < car.getX()+car.getSizeWidth())) {
   return true;
  }
 else  {
  return false;
 }
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      //Frog Y position goes up
      y -= 10;
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down
      y += 10;
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      x += 10;
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      x -= 10;
    }
  }
}

class Car{
int cx, cy, sizeWidth, speed;

int getX() {
 return cx;
  
}

int getY() {
  return cy;
  
}

int getSizeWidth(){
 return sizeWidth; 
  
}

int getSpeed(){
 return speed; 
  
}

int getSizeHeight(){
 return sizeHeight; 
  
}
  

int sizeHeight = (int)random(40,60);

void display()
  {
    fill(0,255,0);
    rect(cx , cy,  sizeWidth, sizeHeight);
  }

void moveRight(){
 
  cx += speed;
  if (cx >= 800){
   cx = -sizeWidth; 
   speed = (int)random(3,10);
   sizeWidth = (int)random(50,200);
  sizeHeight = (int)random(25,75);
  }
}

void moveLeft(){
  
  
  cx -= speed;
 if (cx <= -sizeWidth){
   
  cx = 800;
   speed = (int)random(3,10);
   sizeWidth = (int)random(50,200);
  sizeHeight = (int)random(25,75);
  
 }
  
}

Car(int cx, int cy, int sizeWidth, int speed){
  
 

  
  this.cx = cx;
  this.cy = cy;
  this.sizeWidth = sizeWidth;
  this.speed = speed;
  
  
}


  
}
