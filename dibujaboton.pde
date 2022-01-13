// clase boton
class Button {
  String label; // etiqueta
  float x;      // Esquina superior izquierda de x
  float y;      // Esquina superior izquierda de y
  float w;      // ancho 
  float h;      // alto
  
  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void dibujaboton() {//funcion dibujo de los botones
    fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
  }
  
  boolean MouseIsOver() {//posicion del puntero sobre el boton
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}

void stop(){
MySong.close();
AudioManager.stop();
//super.stop();
}