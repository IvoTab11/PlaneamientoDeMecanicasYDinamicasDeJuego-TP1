private Escenario escenario;
private Tanque tanque;
private TanqueEnemigo tanqueEnemigo;
private JoyPad joyPad;
private SpawnerBalas spawner;
public void setup(){
  size(600, 600);
  escenario = new Escenario();
  tanque = new Tanque(new PVector(300, 450));
  tanqueEnemigo = new TanqueEnemigo(new PVector(300, 100));
  spawner = new SpawnerBalas();
  joyPad = new JoyPad();
}

public void draw(){
  escenario.display();
  tanqueEnemigo.display();
  boolean esVisible = validarRangoDeVision();
  if (!esVisible) {
    tanque.display();
  }
  displayVectores();
  if (joyPad.isDerechaPresionado()) {
    tanque.move(2); 
  }
  if (joyPad.isIzquierdaPresionado()) {
    tanque.move(4); 
  }
    if (joyPad.isArribaPresionado()) {
    tanque.move(1); 
  }
  if (joyPad.isAbajoPresionado()) {
    tanque.move(3); 
  }
  spawner.actualizarBalas();
}

boolean validarRangoDeVision() {
  return tanque.esVisible(tanqueEnemigo);
}

public void displayVectores() {
  PVector direccionVector= PVector.sub(tanqueEnemigo.getPosicion(),tanque.getPosicion()).normalize().mult(50);
  strokeWeight(1);
  stroke(255,0,0);
  PVector proyeccionDireccionVector = PVector.add(tanque.getPosicion(),direccionVector); 
  stroke(#440DFF);//color azul
   line(tanque.getPosicion().x,tanque.getPosicion().y,proyeccionDireccionVector.x,proyeccionDireccionVector.y);
   strokeWeight(10);
  point(proyeccionDireccionVector.x,proyeccionDireccionVector.y);
  
  switch(tanque.getDireccion()){
    case 0: { 
      PVector axysVisualizacion = new PVector(0,-1);
      PVector proyeccionAxysVisualizacion = axysVisualizacion.mult(50);
      strokeWeight(1);
      stroke(#FF0D0D);//color rojo
      line(tanque.getPosicion().x,tanque.getPosicion().y,
      tanque.getPosicion().x + proyeccionAxysVisualizacion.x,
      tanque.getPosicion().y + proyeccionAxysVisualizacion.y
      );
      strokeWeight(10);
      point(tanque.getPosicion().x + proyeccionAxysVisualizacion.x,
      tanque.getPosicion().y + proyeccionAxysVisualizacion.y);
      break;
    }
  }
}
public void keyPressed() {
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setPresionoDerecha(true);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setPresionoIzquierda(true);
  }
  if (key == 'w' || keyCode == UP) {
    joyPad.setPresionoArriba(true);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setPresionoAbajo(true);
  }
  if(keyCode == ENTER){
    println("Se presionó la tecla");
    tanque.disparar(spawner);
  }

}

public void keyReleased() {
  if (key == 'd' || keyCode == RIGHT) {
    joyPad.setPresionoDerecha(false);
  }
  if (key == 'a' || keyCode == LEFT) {
    joyPad.setPresionoIzquierda(false);
  }
    if (key == 'w' || keyCode == UP) {
    joyPad.setPresionoArriba(false);
  }
  if (key == 's' || keyCode == DOWN) {
    joyPad.setPresionoAbajo(false);
  }
}
