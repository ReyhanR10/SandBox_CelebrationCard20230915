//Global Variables
int appWidth, appHeight; 
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
//String ; //All tect variables as name=value pairs
//PFont ; //All font
//color ; //colour palette & inks
int sizeFont, size; //Text Variables
//
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
 xRectQuit = appWidth*1/4;
 yRectQuit = appHeight*1/4;
 widthRectQuit = appWidth*1/2;
 heightRectQuit = appHeight*1/2;
 //
 //DIVs
 rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
 rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
 //rect(); //Image, foreground, near the top
 //rect(); //Copy and paste this for all rect()s
 // 
 // Text Setup
 // Fonts from OS (Operating System) 
 //String[] fontList = PFont.list(); //Lists all fonts available on OS
 //printArray(fontList);
 //[fontName] =  createFont("fontSpelling", [startingFont]);
 //Verify the font exist in Processing.Java
 //
} //End setup 
//
void draw() {
  //Drawing Text, copied for each line of text
  //fill [colourName]; //ink
  textAlign(CENTER, CENTER); //A;ign X&Y, see Processing.org / reference
  //size = [pixelNumberFontsize]; //integer number
  //textFont( [fontVariables] , size); // states which font to use
  //text ( [textStringName], [four rect() variables copied from DIVs]);
  //
} //End draw
//
void keyPressed() {
} //End Keypressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
 //End MAIN Program
