float circleX;
float circleY;
float circleRadius;
float xSpeed;
float ySpeed;
void setup() {
  size(640, 480);
  circleX = 25.0;
  circleY = height/2;
  xSpeed = 3;
  ySpeed = 3;
  circleRadius = 10;
}

void draw() {
  background(50);
  fill(255);

  if ((circleX > width - circleRadius) || (circleX < 0 + circleRadius)) {
    xSpeed = xSpeed * -1;
  } 

  if ((circleY > height - circleRadius) || (circleY < 0 + circleRadius)) {
    ySpeed = ySpeed * -1;
  } 

  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;

  ellipse(circleX, circleY, 2 * circleRadius, 2 * circleRadius);
}