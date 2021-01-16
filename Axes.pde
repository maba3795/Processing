//building the axes and fill them with colors
class Axes {

  Cone cone = new Cone();
  Cylinder cylinder = new Cylinder() ;

  int arrowLength = 150;

  color red = color(255, 0, 0);
  color green = color(0, 255, 0);
  color blue = color(0, 0, 255);

  void render() {

    fill(red);


    pushMatrix();
    cylinder.render(5, 5, -150, 15, 2);
    translate(0, -arrowLength, 0);
    cone.render(10, 0, -20, 10);
    popMatrix();

    fill(green);

    pushMatrix();
    rotateX(radians(90));
    cylinder.render(5, 5, 150, 15, 2);
    translate(0, arrowLength, 0);
    cone.render(10, 0, 20, 10);
    popMatrix();

    fill(blue);

    pushMatrix();
    rotateZ(radians(-90));
    cylinder.render(5, 5, 150, 15, 2);
    translate(0, arrowLength, 0);
    cone.render(10, 0, 20, 10);
    popMatrix();
  }
}
