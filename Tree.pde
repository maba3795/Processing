class tree{
 
  void render(){
//axes.render();
cylinder.render(5, 5, -100, 15, 6);
fill(yellow);
translate(0,-40,0);
cone.render(30, 0, -20, 10);
translate(0,-30,0);
cone.render(20, 0, -20, 10);
translate(0,-30,0);
cone.render(10, 0, -20, 10);

  }  
}
