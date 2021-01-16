class Cone {

  color green =color(0, 240, 0);
  color black =color(0);

  color col;
  color farbe;


  void render(float topRadius, float bottomRadius, float tall, int sides) {

    float angle = 0;
    float angleIncrement = TWO_PI / sides;
    beginShape(TRIANGLE_STRIP);



    for (int i = 0; i < sides + 1; ++i) {
      vertex(topRadius*cos(angle), 0, topRadius*sin(angle));
      vertex(bottomRadius*cos(angle), tall, bottomRadius*sin(angle));
      angle += angleIncrement;
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

//possible way to set the color
  void setColor(color farbe) {
    col=farbe;
  }
}
