//metodo para elegir el archivo a reproducir
//https://processing.org/reference/selectInput_.html
import  javax.swing.*;    //para formulario abrir
import javax.swing.filechooser.FileNameExtensionFilter; //para filtra solo mp3
void fileSelected(File selection) {//explorador de archivos
  if (selection == null) {
    println("Cancelado por el usuario");
  } else {
    if(cont==1){//detiene la reproduccion al seleccionar un nuevo archivo
    MySong.close();}
    MySong = AudioManager.loadFile(selection.getAbsolutePath(),800);
    //carga el archivo a partir de la seleccion del explorador, se asigna el tamaño del buffer 
    MySong.play();//reproduce
    cont=1;
    strokeWeight(5);
  }
}