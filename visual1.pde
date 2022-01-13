void visual(){//despliqga la visualizacion
  colorrand();
   frameRate(10);
  
  for(int i = 0; i < MySong.bufferSize() - 1; i++) 
  {
    //Se usa el bufer del sonido para dibujar una linea de la onda en cada interaccion
    //left1 determina la posicion inicial
    
    //hace referencia a canales izquierdo y derecho ejemplo del sketch M1
    float left1 = 150 + MySong.left.get(i) * 130; //130 define el tamaño de la onda
    float left2 = 150 + MySong.left.get(i+1) * 130;
    float right1 = 350 + MySong.right.get(i) * 130;
    float right2 = 350 + MySong.right.get(i+1) * 130;//multiplicacion amplifica la onda
      colorrand();
    line(i, left1, i+1, left2);
      colorrand();
    line(i, right1, i+1, right2);
  }
}