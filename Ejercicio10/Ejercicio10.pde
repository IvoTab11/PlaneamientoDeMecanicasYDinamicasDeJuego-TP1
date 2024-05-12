private Vector vector;
private PVector puntoA = new PVector(-10, -20);
private PVector puntoB = new PVector(40, -10);
private PVector puntoC = new PVector(50, 20);
public void setup() {
  size(400, 400);
  vector = new Vector(puntoA, puntoB, puntoC);
}

public void draw() {
  translate(width/2, height/2);
  background(255);
  strokeWeight(0.5);
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);
  strokeWeight(5);
  point(puntoA.x,puntoA.y);
  point(puntoB.x,puntoB.y);
  point(puntoC.x,puntoC.y);
}
