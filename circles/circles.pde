//texture midterm @mfadt
//nicoleyimessier.com

float size = 2.0;
float rectX, rectY;
float amplitude;
float startX, startY;
int length = 1000; 
int[] radius = new int[1000]; 

void setup() {
  size(1000, 1000);
  startX = width/2;
  startY = height/2;
  amplitude = 20;
  
  for (int i=0; i<1000; i++) {
    radius[i] = int(amplitude) + int(random(0,10));
  }
}

void draw() {
  background(0);
  fill(0);
  stroke(255);

  //amplitude = 100;
  //float cose = amplitude*cos(theta)+startX;
  //float sine = amplitude*sin(theta)+startY;
  rectMode(CENTER);

  for (float j=amplitude; j<=width; j+=2*amplitude+10) {
    for (float k=amplitude; k<=height; k+=2*amplitude+10) {
      startX = j ;
      startY = k ;
      for (float i=0; i<2*PI; i+=0.1) {
        rectX = (amplitude)*cos(i)+startX;
        rectY = (amplitude)*sin(i)+startY;
        //rect(rectX, rectY, radius[int(j)], size);
        rect(rectX, rectY, radius[int(j)], radius[int(j)]);
        //println("radius: " + radius[int(j)]);
      }
    }
  }

  //----------save images--------------
  if (keyPressed) {
    if (key == 's') {
      saveFrame();
      println("screenshot captured");
    }
  }
}
