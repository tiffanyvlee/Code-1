void setup() {
  size(600,600);
  noStroke();
}


void draw() {
  
  background(255, 150, 200);
  
  //first loop (in back)
  for (int i = 0; i <= width; i += width/20) {
    for (int j = 0; j <= height; j += height/20) {
      
      //distance from the index to mouse
      float d = dist(mouseX, mouseY, i, j);
    
      //size and value based on distance
      float s = map(d, 20, 50, 40, 10);
  
      //color based on distance
      fill( map(d, 0, 100, 0, 255), 0, map(d, 0, 300, 0, 255));
        
      //ellipse at index positions and size s  
      ellipse(i, j, s, s); 
    }
  }
  
  //second loop (in front)
  for (int k = 0; k <= width; k += width/40) {
    for (int l = 0; l <= height; l += height/20) {
      
      float e = dist(mouseX, mouseY, k, l);      
     
      float t = map(e, 0, 100, 1, 10);
        
      fill( map(e, 0, 300, 0, 255), 0,  map(e, 0, 100, 0, 50));
      ellipse(k, l, t, t);
    }
  }

}