//Drag Lag 
//Jeka, otisyancey@gmail.com, 
//Thanks to Atagen + Tsulej for help

//Load image > Click and drag > Space to save > R to reset

PImage img;

color bckgrnd = color(0,120,255); // Background colour

void setup(){
  size(1000,1000); // Sets window size
  background(bckgrnd); // Sets background
  img = loadImage("asaro420.png"); // Load image (name.extension)
}

void keyPressed() { // SPACE to save
  if(keyCode == 32) {
    String fn = "/_"; // Save name, add extensions for example .bmp
    save(fn);
    println("Image "+ fn + " saved");
  }
  if(key == 'r') {
    background(bckgrnd);
  }
}

void draw(){
  if (mousePressed){
    image(img, mouseX, mouseY);
  }
}
