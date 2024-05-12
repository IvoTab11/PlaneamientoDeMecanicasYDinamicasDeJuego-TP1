
public void setup() {
  size(400, 400);

}

public void draw() {
  translate(width/2, height/2);
  background(255);
  strokeWeight(0.5);
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);

}
