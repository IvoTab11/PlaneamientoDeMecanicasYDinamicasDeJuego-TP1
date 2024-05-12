class Vector {
  private PVector puntoA;
  private PVector puntoB;
  private PVector puntoC;
  private PVector puntoD;

  public Vector(PVector puntoA, PVector puntoB, PVector puntoC) {
    this.puntoA = puntoA;
    this.puntoB = puntoB;
    this.puntoC = puntoC;
    calcularD();
  }
  
   public void calcularD() {
    PVector vectorBc = PVector.sub(puntoC, puntoB);
    puntoD = PVector.add(puntoA, vectorBc);
  }
  
  public void display() {
    line(puntoA.x,puntoA.y,puntoB.x,puntoB.y);
    line(puntoB.x,puntoB.y,puntoC.x,puntoC.y);
    line(puntoC.x,puntoC.y,puntoD.x,puntoD.y);
    line(puntoD.x,puntoD.y,puntoA.x,puntoA.y);
  }
}
