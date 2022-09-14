void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  scale(50,50);
  for(int y = 0; y <= 495; y+=45){
    for (int x =-50; x < 500; x+=30){
      if (shift == true)
        scale(x+45,y);
      else
        scale(x,y);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
      
}
void scale(int x, int y) {
  fill(0);
  beginShape();
  curveVertex(x,y-40);
  curveVertex(x,y-40);
  curveVertex(x+37,y+23);
  curveVertex(x,y+35);
  curveVertex(x,y+35);
  endShape();
  beginShape();
  curveVertex(x,y-40);
  curveVertex(x,y-40);
  curveVertex(x-37,y+23);
  curveVertex(x,y+35);
  curveVertex(x,y+35);
  endShape();
  int diam = 0;
  int r = 0;
  noFill();
  while(diam < (int)(Math.random()*100) ){
  stroke(r,0,0);
  ellipse(x,y,diam,diam);
  diam++;
  r+=255/30.0;
  }
}
