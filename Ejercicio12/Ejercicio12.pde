private Escenario escenario;
private Tanque tanque;
private TanqueEnemigo tanqueEnemigo;
public void setup(){
  size(600, 600);
  escenario = new Escenario();
  tanque = new Tanque(new PVector(300, 450));
  tanqueEnemigo = new TanqueEnemigo(new PVector(300, 100));
}

public void draw(){
  escenario.display();
  tanqueEnemigo.display();
  boolean esVisible = validarRangoDeVision();
  if (!esVisible) {
    tanque.display();
  }
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
