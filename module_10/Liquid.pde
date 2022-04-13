public class Liquid{
  public PVector wposition =  new PVector();
  public float x = wposition.x;
  public float y = wposition.y;
  public float horizon,depth;
  public float cd;
  
  public Liquid (float x, float y, float horizon, float depth, float cd){
    this.x = x;
    this.y = y;
    this.horizon = horizon;
    this.depth = depth;
    this.cd = cd;
  }
  
  public void render () {
    noStroke();
    fill(28,120,186);
    beginShape();
    vertex(x-horizon,y,0);
    vertex(x+horizon,y,0);
    vertex(x+horizon,y+depth,0);
    vertex(x-horizon,y+depth,0);
    endShape();
  }

}
