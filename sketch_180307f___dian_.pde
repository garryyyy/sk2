int checkStates(float _bx, float _by, float _w, float _h){
int result;
//color buttonColor;
if (mouseX > _bx && mouseX < _bx + _w &&
  mouseY > _by && mouseY < _by + _h) {
  buttonColor = color(255, 0, 0);
  if (mousePressed) {
    //buttonColor = color(random(255), random(255), random(255));
    result = 2
  

  } else {
  // buttonColor = color(100);
  result = 0
}
return result
}




void setup() {
  size(800, 600);
  noStroke();
  bx = width/2;
  by = height/2;
  w = 80;
  h = 60;
}

void draw() {
  for (int bx = 0; by < height; by += 2*h) {
    for (int bx = 0; by < width; by += 2*w) {



      //fill(buttonColor);
      //rect(bx, by, w, h);
      int state = checkStates(bx, by, w, h);
      println(state);
      if (state == 0) btnColor = color(0);
      if (state == 1) btnColor = color(255, 0, 0);
      if (state == 2) btnColor = color(random(255));

      fill(btnColor);
      rect(bx, by, w, h)
    }