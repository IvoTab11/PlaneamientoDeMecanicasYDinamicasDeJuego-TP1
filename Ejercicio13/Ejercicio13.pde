PVector posicion;
PVector velocidad;
float radio = 20;

void setup() {
  size(400, 400);
  posicion = new PVector(width / 2, height / 2);
  velocidad = new PVector(5, 4);
}

void draw() {
  background(255);
  
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
  
  ellipse(posicion.x, posicion.y, radio * 2, radio * 2);
}
