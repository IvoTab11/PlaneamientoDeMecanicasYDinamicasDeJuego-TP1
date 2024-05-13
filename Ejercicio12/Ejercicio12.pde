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
  tanque.display();
}
