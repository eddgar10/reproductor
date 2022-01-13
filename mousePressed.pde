// acciones del boton
//https://processing.org/reference/mousePressed_.html
void mousePressed()
{
  if (on_button.MouseIsOver()) {
    
   selectInput("Seleccione archivo de música :", "fileSelected");
   //abre el explorador
  }
  if (on_button2.MouseIsOver()) {
   stop();//detiene la reproduccion
   cont=0;
  }
  
  if (on_button3.MouseIsOver()) {//boton para el cambio de visualizacion
    contvis++;
   if(contvis>1){//se incrementa el numero dependiendo la cantidad de visualizaciones
     contvis=0;
   }
  }
}