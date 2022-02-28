class Walker{
  public PVector Position = new PVector();
  public float Scale;  
  
  public Walker(){
  
  }
  
  public void render () {
    circle(Position.x,Position.y,Scale);
  }
}
