class Tanque{
  private PImage imagen;
  private PVector posicion;
  private PVector velocidad;
  private int direccion;

  public Tanque (PVector posicion){
    this.posicion= posicion;
    this.velocidad= new PVector(3,3);
    this.direccion= 0;
    this.imagen= loadImage("tanque.png");
  
  }
  
  
  
  
  public void setPosicion(PVector posicion){
    this.posicion= posicion;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setDireccion(int direccion){
    this.direccion= direccion;
  }
  
  public int getDireccion(){
    return this.direccion;
  }
  
  public void display(){
    imageMode(CENTER);
    image(this.imagen, 0, 0, 100, 100);
  }

}
