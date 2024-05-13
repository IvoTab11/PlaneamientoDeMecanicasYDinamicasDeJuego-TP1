private PImage enemigo;
private PVector posicionEnemigo;
private PImage personaje;
private PImage escenario;

public void setup(){
  size(600,600);
  enemigo = loadImage("azmodan.png");
  personaje = loadImage("cazador.png");
  escenario = loadImage("escenario2.jpg");
  posicionEnemigo = new PVector(width/2,height/2);
}

public void draw(){
  escenario.resize(600,600);
  imageMode(CENTER);
  background(escenario);
  personaje.resize(70,70);
  imageMode(CENTER);
  image(personaje,mouseX,mouseY);
  dibujarEnemigo();
}
public void dibujarEnemigo(){
  enemigo.resize(120,120);
  imageMode(CENTER);
  image(enemigo, posicionEnemigo.x,posicionEnemigo.y);
}
