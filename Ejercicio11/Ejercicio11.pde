private Vector vectorPersonaje;
private Vector vectorEnemigo;
private Vector vectorEnemigoPersonaje;
private PImage enemigo;
private PVector posicionEnemigo;
private PImage personaje;
private PImage escenario;

public void setup(){
  size(600,600);
  vectorPersonaje = new Vector(new PVector(0,0),new PVector(20,0));
  vectorEnemigo = new Vector(new PVector(0,0), new PVector(50,0));
  vectorEnemigoPersonaje = new Vector();
  enemigo = loadImage("azmodan.png");
  personaje = loadImage("cazador.png");
  escenario = loadImage("escenario2.jpg");
  posicionEnemigo = new PVector(width/2,height/2);
}

public void draw(){
  escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
  vectorEnemigo.setOrigen(posicionEnemigo);
  vectorPersonaje.setOrigen(new PVector(mouseX,mouseY));
  personaje.resize(70,70);
  imageMode(CENTER);
  image(personaje,mouseX,mouseY);
  vectorEnemigo.getDestino().normalize();
  dibujarEnemigo();
  vectorEnemigo.display();
  vectorPersonaje.display();
  dibujarVectorEnemigoPersonaje();
}
public void dibujarEnemigo(){
  enemigo.resize(120,120);
  imageMode(CENTER);
  image(enemigo, posicionEnemigo.x,posicionEnemigo.y);
}
public void dibujarVectorEnemigoPersonaje(){
  vectorEnemigoPersonaje.setOrigen(posicionEnemigo);
  vectorEnemigoPersonaje.setDestino(PVector.sub(vectorPersonaje.getOrigen(),posicionEnemigo).normalize());
  vectorEnemigoPersonaje.display();
}
