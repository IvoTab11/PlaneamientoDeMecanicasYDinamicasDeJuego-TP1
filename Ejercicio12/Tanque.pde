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
  
  public boolean esVisible (TanqueEnemigo tanqueEnemigo){
    boolean esVisible = false;
    PVector direccionDeTanqueEnemigoVector = PVector.sub(tanqueEnemigo.getPosicion(),this.posicion);
    direccionDeTanqueEnemigoVector.normalize();
  
    PVector direcciontoViewVector= new PVector();
  
    switch(this.direccion){
      case 0:{
        direcciontoViewVector = new PVector(0,-1,0);
        break;
      }
    }
  
    float dotProduct = PVector.dot(direcciontoViewVector,direccionDeTanqueEnemigoVector);
    if (dotProduct > 0.8){
      esVisible = true;
      spin(direcciontoViewVector,direccionDeTanqueEnemigoVector);
    }
    return esVisible;
  }
  
  public void spin(PVector direcciontoViewVector,PVector direccionDeTanqueEnemigoVector){
    float angulo = PVector.angleBetween(direcciontoViewVector,direccionDeTanqueEnemigoVector);
    PVector rotacionEje = direcciontoViewVector.cross(direccionDeTanqueEnemigoVector);
    int clockWise =1;
  
    if (rotacionEje.z < 0){
      clockWise=-1;
    }
  
    pushMatrix();
    imageMode(CENTER);
    translate(this.posicion.x,this.posicion.y);
    rotate(angulo*clockWise);
    image(this.imagen,0,0,this.imagen.width* 0.20,this.imagen.height* 0.20);
    popMatrix();
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
  
  public void disparar(SpawnerBalas spawner){
    
  PVector direccionVector= PVector.sub(tanqueEnemigo.getPosicion(),tanque.getPosicion()).normalize().mult(50);
  PVector proyeccionDireccionVector = PVector.add(tanque.getPosicion(),direccionVector); 
 
    Bala unaBala = new Bala(new PVector(this.posicion.x,this.posicion.y),proyeccionDireccionVector);
    Bala[] balas = spawner.getBalas();
    for(int i=0;i<balas.length;i++){
      if(balas[i]==null){
        balas[i]=unaBala;
        break;
      }
    }
    spawner.setBalas(balas);
  }
  
  public void display(){
   pushMatrix();
    translate(this.posicion.x, this.posicion.y);
    rotate(radians(direccion * 90));
    imageMode(CENTER);
    image(this.imagen, 0, 0, 100, 100);
    popMatrix();
  }
  
  public void move(int direccion) {
    switch (direccion) {
      case 1:
        posicion.y -= velocidad.y;
        break;
      case 2: 
        posicion.x += velocidad.x;
        break;
      case 3: 
        posicion.y += velocidad.y;
        break;
      case 4:
        posicion.x -= velocidad.x;
        break;
    }
  }

}
