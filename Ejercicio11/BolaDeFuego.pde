class BolaDeFuego{
  private PVector posicion;
  private PVector velocidad;
  private PVector direccion;
  private PImage imagen;

  public BolaDeFuego(PVector posicion, PVector direccion,PVector velocidad){
    this.posicion=posicion;
    this.direccion=direccion;
    this.velocidad=velocidad;
  }
  
  public void mover(){
    this.posicion.add(velocidad);
  }
  
  public void display(){
   imagen=loadImage("bolaFuego.png");
   imagen.resize(60,60);
   image(imagen,posicion.x,posicion.y);
  }


}
