class Vector {
  private PVector puntoA;
  private PVector puntoB;
  private PVector puntoC;
  private PVector puntoD;

  public Vector(PVector puntoA, PVector puntoB, PVector puntoC) {
    this.puntoA = puntoA;
    this.puntoB = puntoB;
    this.puntoC = puntoC;
  }
  public void display() {
    line(puntoA.x,puntoA.y,puntoB.x,puntoB.y);
    line(puntoB.x,puntoB.y,puntoC.x,puntoC.y);
  }
}
