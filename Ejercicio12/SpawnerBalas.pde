class SpawnerBalas{
  private Bala[] balas;
  
  public SpawnerBalas(){
    balas = new Bala[200];
  }
  
  public Bala[] getBalas(){
    return this.balas;
  }
  
  public void setBalas(Bala[] balas){
    this.balas=balas;
  }
  
  public void actualizarBalas(){
    for(Bala b:balas){
      if(b!=null){
        b.mover();
        b.dibujar();
      }
    }
  }
  
  
}
