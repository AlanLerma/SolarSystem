float ang;  //Creamos variables que 
float ang1; //harán que los planetas
float ang2; //tomen diferentes velocidades
float ang3; //Y un posicionamiento mediante su ángulo
float ang4;
float ang5;
float ang_lun; //Mismo caso, para la luna
PShape nave;  //Crearemos una figura para la nave
PImage Fondo; //Una imagen para dar fondo
float ValorZ;

void setup(){
size(900,700,P3D);
imageMode(CENTER);
Fondo=loadImage("Fondo.jpg");  //cargamos nuestraimagen

}

void draw(){
 background(0); 
 textSize(20);
 text( "Utiliza mouse, clik derecho y clik izquierdo para navegar por el sistema planetario" ,(width/2)-400,70);
 pushMatrix();                     
 translate(width/2,height/2,-300); //usaremos uso de un push y pop Matrix
 image(Fondo,0,0);                 //para dar uso de caracteristicas unicas al fondo
 popMatrix();
 
 //Sol
 pushMatrix();  //Aqui inicializa propiedades que afectaran a todos las esferasa

 pushMatrix();  //Aqui inician propiedades unicas para el sol
 fill(232,153,79);
 stroke(255,222,37);
 translate(width/2,height/2,0);  //se colocará en el centro
 rotateX(radians(-45)); 
 rotateY(radians(ang)); 
 sphere(70);
  ang ++;
  popMatrix();
  
 //Planeta 1
 translate(width/2,height/2,0);
 rotateX(radians(-45));
 rotateY(radians(ang1));
 pushMatrix();
 translate (0,0,100);
 rotateY(radians(ang1));
 fill(112,32,232);
 stroke(139,223,255);
 sphere(10);  //planeta
 ang1 = ang1+2;
 translate (0,0,10);
 box(5);  //luna
 popMatrix();
 
 pushMatrix();
 stroke(232,159,152);
 fill(255,54,52);
 translate (0,0,-130);
 rotateY(radians(ang2));
 sphere(15);  //planeta
 ang2 = ang2+5;
 
 translate (0,0,20);
 box(8);   //luna
 popMatrix();
 
  pushMatrix();
  fill(34,244,23);
 stroke(43,223,23);
 translate (300,20,0);
 rotateY(radians(ang4));
 sphere(20);   //planeta
 ang4 = ang4+.25;
 popMatrix();
 
  pushMatrix();
    fill(220);
 stroke(200);
 translate (-320,0,0);
 rotateY(radians(ang5));
 sphere(40);  //Planeta
 ang5 = ang5+4;
 translate (0,0,-40);
 box(10);  //Luna
 popMatrix(); 
 
 fill(232,160,178);
 stroke(249,168,255);
 rotateY(radians(ang_lun)); //Planeta
 translate (-360,0,0);
 sphere(10); 
 ang_lun = ang_lun + 3;
 
 fill(232,200,152);
 noStroke();
 translate (220,2,150);  //Planeta
 rotateY(radians(ang3));
 sphere(30);
 ang3 = ang3+2;
 popMatrix();    //terminamos las propiedades de todos los planetas


translate(mouseX,mouseY,ValorZ); //agregamos propiedad de cambio de coordenadas por ratón

if (mousePressed == true && mouseButton == LEFT){  //aqui controlamos los movimientos de la nave
 ValorZ = ValorZ+2;
 rotateZ(45);
}else if (mousePressed == true && mouseButton == RIGHT){
  ValorZ = ValorZ-2;
  rotate(-45);
}

 nave =createShape();  //Creamos nuestra nave
 nave.beginShape();  
 nave.fill(240,100,100); //Dibujamos la nave
 nave.stroke(255,0,0);  
 nave.vertex(-10,-10,-10);
 nave.vertex(10,-5,-10);
 nave.vertex(0,0,10);
 nave.endShape();
 shape(nave);  //Agregamos la nave a la pantalla

}
