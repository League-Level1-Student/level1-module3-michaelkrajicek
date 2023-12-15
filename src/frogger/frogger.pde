static final int WIDTH = 800;
static final int HEIGHT = 600;
int x = 400;
int y = 550;
int score = 0;
int hits = 0;



int a = (int)random(0,400);
int b = (int)random(0,400);
int c = (int)random(0,400);
int d = (int)random(0,400);


 PImage blood;
 PImage back;
 PImage carLeft;
 PImage carRight;
 PImage frog;


  Car c1;
  Car c2; 
  Car c3;
  Car c4;

public void settings() {
 // size(WIDTH, HEIGHT);
  size(800,600);
}


public void setup() {
  
int o = (int) random(0,2);
int p = (int) random(0,2);
int q = (int) random(0,2);
int r = (int) random(0,2);
  
c1 = new Car(a,52, 150, 5, o==0? true:false);
c2 = new Car(b,175, 150, 5, p==0? true:false);
c3 = new Car(c,300, 150, 5, q==0? true:false);
c4 = new Car(d,425, 150, 5, r==0? true:false);

   back = loadImage("froggerBackground.png");
   back.resize(800,600);
        carLeft = loadImage("carLeft.png");
        carLeft.resize(150,100);
        carRight = loadImage("carRight.png");
        carRight.resize(150,100);
        frog = loadImage("frog.png");
        frog.resize(50,50);
   blood = loadImage("red-blood-splatter-stain-illustration-vector.png");
  
}


public void draw() {
 // background(52, 198, 235);
 
 background(back);
  
  image (blood,x,y);
  
 textSize(20);
 text("Score: "+score, 10, 25);
 text("Deaths: "+hits, 10, 50);
        
  
  if(c1.left){
   c1.moveLeft(); 
  }else { c1.moveRight(); 
  }
  
  if(c2.left){
   c2.moveLeft(); 
  }else {
   c2.moveRight(); 
  }
  
  if(c3.left){
   c3.moveLeft(); 
  }else{
   c3.moveRight(); 
  }
  
  if(c4.left){
   c4.moveLeft(); 
  }else{
   c4.moveRight(); 
  }
  
  c1.display();
  c2.display();
  c3.display();
  c4.display();
  
 
image (frog, x,y);
  //fill(38, 173, 49);
  //ellipse(x, y, 50, 50);



if (intersects(c1)){
 y = 550;
 
}
  
  if (intersects(c2)){
 y = 550; 
 
  }
 
 if (intersects(c3)){
 y = 550; 
 
 }
 
 if (intersects(c4)){
 y = 550; 
}

if (y==0){
 score += 1;
 y = 550;
}

}

boolean intersects(Car car) {
 if ((y + 50 > car.getY() && y < car.getY()+car.sizeHeight) &&
                (x + 50 > car.getX() && x < car.getX()+car.getSizeWidth())) {
                  hits += 1;
                  image (blood,car.getX(),car.getY());
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
      if (y > 0){
      y -= 10;
      }
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down
      if (y <= 540){
      y += 10;
      }
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      if (x <= 740){
      x += 10;
      }
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      if (x >= 10){
      x -= 10;
      }
    }
  }
}

class Car{
int cx, cy, sizeWidth, speed;
boolean left;

boolean getLeft(){
 return left; 
}

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
  

int sizeHeight = 100;

void display()
  {
    
    if (left){
   image (carLeft, cx, cy);
    } else {
      image (carRight, cx, cy);
    }
   
   // fill(0,255,0);
    //rect(cx , cy,  sizeWidth, sizeHeight);
  }

void moveRight(){
 
  cx += speed;
  if (cx >= 800){
   cx = -sizeWidth; 
   speed = (int)random(3,7);
   
   /*
   sizeWidth = (int)random(50,200);
  sizeHeight = (int)random(25,75);
  */
  
  }
}

void moveLeft(){
  
  
  cx -= speed;
 if (cx <= -sizeWidth){
   
  cx = 800;
   speed = (int)random(3,7);
   
   /*
   sizeWidth = (int)random(50,200);
  sizeHeight = (int)random(25,75);
  */
  
 }
  
}

Car(int cx, int cy, int sizeWidth, int speed, boolean left){
  
 

  
  this.cx = cx;
  this.cy = cy;
  this.sizeWidth = sizeWidth;
  this.speed = speed;
  this.left = left;
  
  
}


  
}
