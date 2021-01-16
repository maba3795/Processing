//building the cylinder
class Cylinder {

  color green =color(0, 240, 0);
  color black =color(0);
  color col;
  color farbe;


  void render(float topRadius, float bottomRadius, float tall, int sides, float vSides) {

    float angle = 0;
    float angleIncrement = TWO_PI / sides;
    beginShape(TRIANGLE_STRIP);

    // texture(tex);

    float segmentHeight = tall/vSides;

    for (int j = 0; j < vSides; j++) {
      for (int i = 0; i < sides + 1; i++) {
        vertex(topRadius*cos(angle), j * segmentHeight, topRadius*sin(angle));
        vertex(bottomRadius*cos(angle), (j+1) * segmentHeight, bottomRadius*sin(angle));
        angle += angleIncrement;
      }
    }
    endShape();

    // If it is not a cone, draw the circular top cap
    if (topRadius != 0) {
      angle = 0;
      beginShape(TRIANGLE_FAN);
      // Center point
      vertex(0, 0, 0);
      for (int i = 0; i < sides + 1; i++) {
        vertex(topRadius * cos(angle), 0, topRadius * sin(angle));
        angle += angleIncrement;
      }
      endShape();
    }

    angle = 0;
    beginShape(TRIANGLE_FAN);
    // Center point
    vertex(0, tall, 0);
    for (int i = 0; i < sides+1; i++) {
      vertex(bottomRadius * cos(angle), tall, bottomRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }



  void setColor(color farbe) {

    col=farbe;
  }
}
