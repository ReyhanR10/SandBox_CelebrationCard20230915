//Global Variables
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRect2, yRect2, widthRect2, heightRect2;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
//
void setup() {
 //Print & Println
 println("Hello World");
 println("Width:"+width, "\t", "Height:"+height);
 println("Display Width: "+displayWidth, "\tDisplay Width: "+displayHeight);
 //Character Escape, tab, new
 //
 fullScreen();
  appWidth = width;
  appHeight = height;
 //
 //Population
 xRectBackground = appWidth*0;
 yRectBackground = appHeight*0;
 widthRectBackground = appWidth-1;
 heightRectBackground = appHeight-1;
 xRect2 = appWidth*1/4;
 yRect2 = appHeight*1/4;
 widthRect2 = appWidth*1/2;
 heightRect2 = appHeight*1/2;
 xRectQuit = appWidth*1/4;
 yRectQuit = appHeight*1/4;
 widthRectQuit = appWidth*1/2;
 heightRectQuit = appHeight*1/2;
 //
} //End setup 
//
void draw() {
 rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
 rect(xRect2, yRect2, widthRect2, heightRect2);
 rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
} //End draw
//
void keyPressed() {
} //End Keypressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  if ( mouseX>xRect2 && mouseX<xRect2+widthRect2 && mouseY>yRect2 && mouseY<yRect2+heightRect2)  println("Button Activated");
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
 //End MAIN Program
