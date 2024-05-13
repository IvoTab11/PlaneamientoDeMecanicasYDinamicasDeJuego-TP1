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
    velocidad.x *= -1;
  }
  if (posicion.y < radio || posicion.y > height - radio) {
    velocidad.y *= -1; 
  }
  
  ellipse(posicion.x, posicion.y, radio * 2, radio * 2);
}
