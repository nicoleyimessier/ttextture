float x, y;
float curveFittingFactor = .035;
float curveFittingFactor2 = .4;
float graphWidth;
float radius=1;
float step=0.009;
float step2=0.003;

void setup() {
  size(1000, 1000);
  graphWidth=width/2;
  background(255);
  stroke(0.01);
  fill(255);
   
  for (float i=-graphWidth; i<graphWidth; i++) {
    for (float j=0.1; j<1; j+=step) {
      x = -i;
      y = -j*(pow(i, 2))*curveFittingFactor+height;
      println("y: " + y);
      if(y > height/2)
        ellipse(x+width/2, y, radius, radius);
    }
  }
   
  
  for (float i=-graphWidth; i<graphWidth; i++) {
    for (float j=0.1; j<1; j+=step) {
      x = i;
      y = j*(pow(i, 2))*curveFittingFactor;
      println("y: " + y);
      if(y < height/2)
        ellipse(x+width/2, y, radius, radius);
    }
  }
 
  
}

void draw(){
  if (keyPressed) {
    if (key == 's') {
      saveFrame();
      println("screenshot captured");
    }
  } 
}
