import ddf.minim.*;//libreria
Minim AudioManager;//manejador
AudioPlayer MySong;//objeto para cargar el audio
Button on_button;  // botones
Button on_button2;
Button on_button3;//visualizacion
int cont=0;//contador auxiliar para la primera carga 
int contcolor=0;
int contvis=0;
float r,g,b;

void setup() {
  size(800, 600);
  background(0);
  smooth();//suavizado
  on_button = new Button("Abrir", 10, 540, 100, 50);//inicializa botones
  on_button2 = new Button("Alto", 140, 540, 100, 50);
  on_button3 = new Button("V", 690, 540, 100, 50);
  AudioManager = new Minim(this);//inicializa el manejador
  
}

void draw() {
  fill(0);
  rect(0,0, 800, 530);//limpia pantalla
  on_button.dibujaboton();//dibuja botones
  on_button2.dibujaboton();
  on_button3.dibujaboton();
  if(cont>=1){//comprueba si hay un elemento reproduciendo para activar la visualizacion 
    switch(contvis){//se escoge la visualizacion dependiendo del valor del contador 
      case 0:
      visual();
      break;
      case 1:
      visual2();
      break;
    }
    
  }
}