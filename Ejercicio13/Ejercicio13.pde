PVector posicion;
PVector velocidad;
float radio = 20;
PImage fondo;
void setup() {
  size(400, 500);
  posicion = new PVector(width / 2, height / 2);
  velocidad = new PVector(5, 4);
  fondo = loadImage("cancha.jpg");
}

void draw() {
  fondo.resize(400,500);
  imageMode(CENTER);
  background(fondo);
  
  posicion.add(velocidad);
  
  if (posicion.x < radio || posicion.x > width - radio) {
    PVector normalHorizontal = new PVector(1, 0);
    float productoPuntoHorizontal = velocidad.dot(normalHorizontal);
    velocidad.sub(PVector.mult(normalHorizontal, 2 * productoPuntoHorizontal));
  }
  if (posicion.y < radio || posicion.y > height - radio) {
    PVector normalVertical = new PVector(0, 1);
    float productoPuntoVertical = velocidad.dot(normalVertical);
    velocidad.sub(PVector.mult(normalVertical, 2 * productoPuntoVertical));
  }
  
  fill(0);
  ellipse(posicion.x, posicion.y, radio * 2, radio * 2);
}
