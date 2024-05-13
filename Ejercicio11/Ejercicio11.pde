private Vector vectorPersonaje;
private Vector vectorEnemigo;
private Vector vectorEnemigoPersonaje;
private PImage enemigo;
private PVector posicionEnemigo;
private PImage personaje;
private PImage escenario;
private PVector posicionBolaDeFuego;
private BolaDeFuego bolaDeFuego;
public void setup(){
  size(600,600);
  vectorPersonaje = new Vector(new PVector(0,0),new PVector(20,0));
  vectorEnemigo = new Vector(new PVector(0,0), new PVector(50,0));
  vectorEnemigoPersonaje = new Vector();
  enemigo = loadImage("azmodan.png");
  personaje = loadImage("cazador.png");
  escenario = loadImage("escenario2.jpg");
  posicionEnemigo = new PVector(width/2,height/2);
  posicionBolaDeFuego = new PVector(width/2,height/2);
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
  detectar();
  if (bolaDeFuego != null) {
  bolaDeFuego.mover();
  bolaDeFuego.display();
  }
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
public void detectar(){
  float productoPunto = vectorEnemigo.obtenerProductoPunto(vectorEnemigoPersonaje);
  fill(255);
  text(productoPunto,20,350);
  if(productoPunto>0.866f){
    text("detectado",100,40);
    bolaDeFuego = new BolaDeFuego(posicionBolaDeFuego, PVector.sub(vectorPersonaje.getOrigen(), posicionEnemigo),new PVector(5,0));
  }
}
