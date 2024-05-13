class Bala{
  private PVector posicion;
  private PVector velocidad;
  
  public Bala(){
  }
  
  public Bala(PVector posicion, PVector direccion){
    this.posicion=posicion;
    this.velocidad = PVector.sub(direccion, posicion).normalize().mult(10);
  }
  
  
  public void mover(){ 
    this.posicion.add(this.velocidad);
  }
  
 
  
  public void dibujar(){
    stroke(#98FF00);
    ellipse(posicion.x,posicion.y,5,10);
  }
  
}
