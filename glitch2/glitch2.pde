PImage img, img2, dropper;
int rows = 100, rowHeight;
boolean dropped;
void setup() {
  size(800, 800);
  colorMode(HSB);
  frameRate(60);
  img = loadImage("4.jpg");
  img.resize(width, height);
  img2 = img.copy();
  //img.filter(GRAY);
  image(img, 0, 0, width ,height);  
  rowHeight = height / rows;
  //for(int i = 0; i < rows; i ++) {
  //  int randomHeight = int(random(8, rowHeight + 10));
  //  PImage c = img2.get(0, rowHeight * i, width, randomHeight);
  //  //if(random(1) >= 0.7) {
  //  //  c.filter(POSTERIZE, 4);
  //  //}
  //  //set(int(random(-20, 20)), rowHeight * i, c);
  //  float randomX = random(-20, 20);
  //  image(c, randomX, rowHeight * i);
  //}
  imageMode(CORNERS);
  //save("glitch.png");
}

void draw() {

}

void mouseDragged() {
  if(dropped) {
    //set(int(random(30)), mouseY, dropper);
    image(dropper, 0, mouseY, width, mouseY - dropper.height);
  }
  else {
    dropper = get(0, 0,  width, mouseY);
    dropped = true;
  }
  
}

void mouseReleased() {
  dropped = false;
}

void keyPressed() {
  save("glitch3.png");
}