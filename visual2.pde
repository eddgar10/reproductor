void visual2(){//barras
  frameRate(10);
  float offset;
  strokeWeight(30);
  //se dibujan lineas verticales correspondientes al valor del buffer
  for(int counter = 0; counter < MySong.bufferSize() - 1; counter+=28){//el valor de 30 marca la separacion entre lineas
  colorrand();
  offset = MySong.left.get(counter)+1;
  line(counter,250, counter, offset*128);//se posiciona y define el tamaño de la linea
  colorrand();
  offset = MySong.right.get(counter)+1;
  line(counter,500, counter, 250+offset*128);
  fill(0,255,0);
  }
  strokeWeight(5);
  
}