//declare variables
float x, y, velX, velY, diam;
float a,b,velA,velB,rad;
int count = 2;
float [] x = new float [count];
float [] y = new float [count];
float [] velX = new float [count];
float [] velY = new float [count];
float [] diam = new float [80];
float [] rad = new float [30];
float [] a = new float [count];
float [] b = new float [count];

void setup() {
  //set size of canvas
  size(800, 600);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[],y[],diam[],diam[]);
  ellipse(a[],b[],2*rad[],2*rad[]);


  //add velocity to position
  x[] += velX[];
  y[] += velY[];

  a[] += velA[];
  b[] += velB[];

  //bounce ball if it hits walls
  if (x[] + diam[]/2 >= width) {
    velX[] = -abs(velX[]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[] - diam[]/2 <= 0) {
    velX[] = abs(velX[]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[] + diam[]/2 >= height) {
    velY[] = -abs(velY[]);
  } else if (y[] - diam[]/2 <= 0) {
    velY[] = abs(velY[]);
  }
  
  if (a[] + 2*rad[]/2 >= width) {
    velA[] = -abs(velA[]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a[] - 2*rad[]/2 <= 0) {
    velA[] = abs(velA[]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (b[] + 2*rad[]/2 >= height) {
    velB[] = -abs(velB[]);
  } else if (b[] - 2*rad[]/2 <= 0) {
    velB[] = abs(velB[]);
  }
  

}
