PImage tijuana;
PFont miFuente;

// Crear variable tabla
Table tabla;

void setup(){
  // 1280 * 720
  // 1980 * 1200
  //
  
  miFuente = createFont("Arial", 30);
  textFont(miFuente);
  
  size(1000, 600);
  tijuana = loadImage("tijuana.PNG");
  
  tabla = loadTable("places.csv", "header");
}

void draw(){
  image( tijuana, 0, 0);  // Dibujamos la imagen
  textSize(30);  // Tamaño del texto
  fill(0, 0, 41);  // Texto amarillo
  text("#TijuanaMakesMeHungry", 10, height - 50);
  // Vamos a recorrer todas las filas de la tabla
  for( TableRow row : tabla.rows()){
    
    float latitud = row.getFloat("lat");
    float longitud = row.getFloat("lng");
    //                            0          100%    0    1000
    float posX = map(longitud, -117.1257, -116.9644, 0, width);
    float posY = map(latitud, 32.5420, 32.4813, 0, height);
    
    int checkins = row.getInt("checkinsCount");
    int colorInicial = 217;
    int colorFinal = 360;
    // Dibujamos elipse
    colorMode(HSB, 360, 100, 100);
    int miColor = int ( map(checkins, 0, 2685, colorInicial, colorFinal) );
    fill( miColor, 100, 100, 10);
    ellipse(posX, posY, 45, 45);
    
    for( int i = colorInicial; i < colorFinal; i++){
      fill(i, 100, 100,10);
      stroke(i, 100, 100,10);
      rect(30, i + 2, 10, 2);
    }
    fill(59 , 1 , 62);
    
    textSize(20);
    text("- Visitas", 60, 200);
    text("+ Visitas", 60, 360);
    
  }
}