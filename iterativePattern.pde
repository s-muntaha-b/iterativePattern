PShader shader;

void setup() {
  size(1000, 1000, P2D);
  shader = loadShader("info.glsl");
  shader.set("resolution", float(width), float(height));
  shader.set("rate", 1.0);
  shader.set("depth", 1.0);
}

void draw() {
  background(0);
  
  stroke(43, 231, 132);
  fill(0, 127, 255);
  ellipse(100, height/2, 200, 200);

  shader.set("time", float(millis())/1000.0);
  shader.set("tex0", get());

 shader(shader);
}
