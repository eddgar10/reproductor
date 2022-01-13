//metodo para generar el color del grafico
void colorrand(){
  
  r=random(0,150);
  g=random(150,200);
  b=random(200,255);
  contcolor++;
  stroke(r,g,b);
}