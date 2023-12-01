static final int WIDTH = 800;
static final int HEIGHT = 600;
int x = 400;
int y = 560;

  Car c1;
  Car c2; 
  Car c3;
  Car c4;

public void settings() {
  size(WIDTH, HEIGHT);
}


public void setup() {
  
c1 = new Car(100,50, 150, 5);
c2 = new Car(260,175, 150, 5);
c3 = new Car(420,300, 150, 5);
c4 = new Car(570,425, 150, 5);
  
}


public void draw() {
  background(52, 198, 235);
  
  c1.display();
  c2.display();
  c3.display();
  c4.display();
  
  c1.move();
  c2.move();
  c3.move();
  c4.move();

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
int cx, cy, size, speed;

void display()
  {
    fill(0,255,0);
    rect(cx , cy,  size, 50);
  }

void move(){
 
  cx += speed;
  if (cx >= 800){
   cx = -size; 
  }
 
  
}

Car(int cx, int cy, int size, int speed){
  
  this.cx = cx;
  this.cy = cy;
  this.size = size;
  this.speed = speed;
  
  
}


  
}
