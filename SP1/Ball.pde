class Ball {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float gravity;
  int ballSize;
  color c = color(random(255), random(255), random(255));

  Ball(int x, int y, int xSpeed, int ySpeed, int ballSize) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.ballSize = ballSize;
  }

  float gravity() {
    ySpeed = ySpeed + gravity;
    return gravity;
  }
  
    void move() {
    y = y + ySpeed;
    x = x + xSpeed;
  }

  void display() {
    fill(c);
    ellipse((int) x, (int) y, ballSize, ballSize);
  }


  void bounce() {
    if (x > width - ballSize/2 || x < ballSize/2) {
      xSpeed = xSpeed * -1;
    }
    if (y > height - ballSize/2 || y < ballSize/2) {
      ySpeed = ySpeed * -1;
    }
  }
}
