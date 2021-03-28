PGraphics pg, mask;

void setup() {
  size(400, 400);
  
  //background
  background(255);
  for(int i = 5 ; i < width ; i += 20){
  strokeWeight(10);  
  line(i,0,i,height);
  }
    
  pg = createGraphics(width, height);
  mask = createGraphics(width, height);
  
  //draw lines over a white background
  pg.beginDraw();
  pg.background(255);
  pg.fill(0);
  pg.strokeWeight(10);
  for(int i = 1 ; i < width ; i += 20){
  pg.line(0,i,width,i);
  }
  pg.endDraw();
  
  //create an elliptic mask
  mask.beginDraw();
  mask.background(0);
  mask.noStroke();
  mask.fill(255);
  mask.ellipse(width/2,height/2,300,300);
  mask.endDraw();
  
  //mask the circles
  pg.mask(mask); // <- std function
  
  //show the result
  image(pg, 0, 0);
}

void draw() {
}

  
