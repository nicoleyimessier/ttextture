import processing.pdf.*;


float centerX;
float centerY;
float centerXTwo;
float centerYTwo;
float radius;
float radiusTwo;
float n = 200.0;
float n2 = n/2;
int counter;


void setup() {
  background(255);
  size(750, 750);
  noLoop();
  beginRecord(PDF, "filename.pdf"); 
  centerX = width/2;
  centerY = height/2;
  radius = centerX-50;
  radiusTwo = radius/2;
  centerXTwo = width/2;
  centerYTwo = height/2+radius/2;
  smooth();
}

void draw() {
  // Draw something good here
  for (float i=0.0; i<2.0*PI; i+=2.0*PI/n) {
    counter++;
    if (counter==1 || counter==130) {
      strokeWeight(1);
    } else {
      strokeWeight(.3);
    }

    float y = radius*sin(i)+centerY;
    float x = radius*cos(i)+centerX;
    println("sine: " + y);
    println("cose: " + x);
    line(centerX, centerY, x, y);
  }

  
  counter=0;
  
  for (float i=0.001; i<2.0*PI; i+=2.0*PI/n) {
    counter++;
   if (counter>130) {
      float y = radius*sin(i)+centerY;
      float x = radius*cos(i)+centerX;
      println("sine: " + y);
      println("cose: " + x);
      strokeWeight(1.6);
      line(centerX, centerY, x, y);
      //line(centerX, centerY, x+1, y+1);
    }
  }
  
    counter=0;
  
  for (float i=0.003; i<2.0*PI; i+=2.0*PI/n) {
    counter++;
   if (counter>130) {
      float y = radius*sin(i)+centerY;
      float x = radius*cos(i)+centerX;
      println("sine: " + y);
      println("cose: " + x);
      strokeWeight(1.6);
      line(centerX, centerY, x, y);
      //line(centerX, centerY, x+1, y+1);
    }
  }
  
  counter=0;
  
  for (float i=0.001; i<2.0*PI; i+=2.0*PI/n) {
    counter++;
   if (counter>80 && counter<100) {
      float y = radius*sin(i)+centerY;
      float x = radius*cos(i)+centerX;
      println("sine: " + y);
      println("cose: " + x);
      strokeWeight(1);
      line(centerX, centerY, x, y);
      //line(centerX, centerY, x+1, y+1);
    }
  }
  

 counter=0; 

  for (float i=PI/2.0; i<5.0*PI/2; i+=2.0*PI/n2) {
    counter++;
    if (counter>85 || counter<50) {
      strokeWeight(1);
    } else {
      strokeWeight(0.8);
    }
    float y2 = radiusTwo*sin(i)+centerYTwo;
    float x2 = radiusTwo*cos(i)+centerXTwo;
    line(centerX, centerY, x2, y2);
    
    
  }
  
  counter=0; 

  for (float i=PI/2.0+0.001; i<5.0*PI/2; i+=2.0*PI/n2) {
    counter++;
    if (counter>85 || counter<50) {
      strokeWeight(1.6);
    } else {
      strokeWeight(0.8);
    }
    float y2 = radiusTwo*sin(i)+centerYTwo;
    float x2 = radiusTwo*cos(i)+centerXTwo;
    line(centerX, centerY, x2, y2);
    
    
  }
  

  endRecord();
}

