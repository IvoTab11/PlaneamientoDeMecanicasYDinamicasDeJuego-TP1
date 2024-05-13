class Escenario{
  private PImage imagen;

  public Escenario(){
  this.imagen = loadImage("arena.jpg");
  this.imagen.resize(width,height);
  //numEscenario = 1;
  }
  
  public void display(){
  imageMode(CORNER);
  image(this.imagen,0,0);
  
  }
}
