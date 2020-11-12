/*
    Coordenadas de la ventana
    
    Miguel Angel Norzagaray Cosío
*/

void setup() 
{
    size(800,600);
    cursor(CROSS);
    fill(0,0,255);
    println("Tamaño de la ventana: "+width+", "+height);
    print("Tamaño de la pantalla: ");
    println(""+displayWidth+", "+displayHeight);
}

void draw() 
{
    background(200);
    float x = (mouseX+width/2)/2;
    float y = (mouseY+height/2)/2;
    
    noFill();
    stroke(0);
    circle(pmouseX,pmouseY,9);

    // Línea horizontal: coordenada X
    stroke(255,0,0);
    line(0,pmouseY,pmouseX-13,mouseY);
    fill(255,0,0);
    textSize(14);
    if ( mouseX>20 )
        text(str(mouseX),mouseX/2-10,mouseY+ (mouseY<height/2?13:-3));
    
    // Línea vertical: coordenada Y
    stroke(0,0,255);
    line(pmouseX,0,pmouseX,pmouseY-13);
    fill(0,0,255);
    if ( mouseY>20 )
        text(str(mouseY),mouseX+ (mouseX<width/2?2:-28),mouseY/2);
    
    fill(0);
    textSize(24);
    text("("+str(mouseX)+", "+str(mouseY)+")",x,y);
}

/* Fin de programa */
