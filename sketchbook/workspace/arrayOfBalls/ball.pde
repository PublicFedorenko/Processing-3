class Ball {
  float ballX;
  float ballY;
  float diameter;
  float radius;
  float xSpeed;
  float ySpeed;

  Ball(float x, float y, float d) {
    diameter = d;
    radius = diameter/2;
    ballX = x + radius;
    ballY = y + radius;
    xSpeed = random(-3, 3);
    ySpeed = random(-3, 3);
    ;
  }

  Ball(float x, float y, float d, float sp) {
    diameter = d;
    radius = diameter/2;
    ballX = x + radius;
    ballY = y + radius;
    xSpeed = sp;
    ySpeed = sp;
  }

  Ball(float x, float y, float d, float xSp, float ySp) {
    diameter = d;
    radius = diameter/2;
    ballX = x + radius;
    ballY = y + radius;
    xSpeed = xSp;
    ySpeed = ySp;
  }

  void display() {
    stroke(0);
    ellipse(ballX, ballY, diameter, diameter);
  }

  void move() {
    ballX = ballX + xSpeed;
    ballY = ballY + ySpeed;
  }

  void bounce() {
    if (ballX > width - radius|| ballX < 0 + radius) {
      xSpeed = xSpeed * -1;
    }    
    if (ballY > height || ballY < 0 + radius) {
      ySpeed = ySpeed * -1;
    }
  }

  boolean edgeReached() {
    if (ballX > width - radius|| ballX < 0 + radius || ballY > height || ballY < 0 + radius) {
      return true;
    } else {
      return false;
    }
  }
  
  float X() {
    return ballX;
  }
  
  float Y() {
    return ballY;
  }
  float xSpeed() {
    return xSpeed;
  }
  
  float ySpeed() {
    return ySpeed;
  }
  
}