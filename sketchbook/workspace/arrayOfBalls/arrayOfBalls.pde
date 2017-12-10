int amount;
float x;
float y;
float diameter;
Ball[] balls = new Ball[1000];
void setup() {
  size(640, 400, P2D); 
  amount = 1;
  diameter = 5;
  balls[0] = new Ball(random(width - 50), random(height - 50), diameter);
}

void draw() {
  background(0);
  for (int i = 0; i < amount; i++) {
    balls[i].display();
    balls[i].move();
    if (balls[i].edgeReached() && amount < balls.length) {
      balls[amount] = new Ball(balls[i].X(), balls[i].Y(), diameter, 
        balls[amount].xSpeed * -1, balls[amount].ySpeed * -1);  // something is going wrong
      //balls[amount] = new Ball(random(width - 50), random(height - 50), diameter);
      amount++;
    }
    balls[i].bounce();
  }
  println("fps = " + frameRate + "  amount = " + amount);
}