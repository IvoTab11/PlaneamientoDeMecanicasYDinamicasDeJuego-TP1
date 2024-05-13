private Escenario escenario;

public void setup(){
  size(600, 600);
  escenario = new Escenario();
}

public void draw(){
  escenario.display();
}
