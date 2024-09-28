Ball[] ballArray = new Ball[50];

void setup() {
  size(800, 800);
  for (int i = 0; i < ballArray.length; i++) {
    ballArray[i] = new Ball((int)random(0, width), (int)random(0, height), (int)random(-5, 5), (int)random(-5, 5), (int)random(25, 125));
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < ballArray.length; i++) {
    ballArray[i].gravity();
    ballArray[i].move();  
    ballArray[i].bounce();    
    ballArray[i].display();  
  }
}
