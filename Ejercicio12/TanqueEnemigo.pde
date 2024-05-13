class TanqueEnemigo{
  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  
  public TanqueEnemigo (PVector posicion){
  this.posicion= posicion;
  this.imagen= loadImage("tanqueEnemigo.png");
  this.imagen.resize(1000,1000);
  this.velocidad = new PVector(5,0);
  }
  
  public void display(){
  imageMode(CENTER);
  image(this.imagen,this.posicion.x,this.posicion.y,imagen.width * 0.15,imagen.height * 0.15);
  
  }
}
