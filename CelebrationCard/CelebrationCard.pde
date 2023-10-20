//Global Variables
int appWidth, appHeight; 
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
int appwidth, appheight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
String title="JAPAN!", footer="JKT48";
PFont titleFont, footerFont;
color pink = #ED0E60, resetDefaultInk=#FFFFFF, red = #F53E3E; //colour palette & inks
int sizeFont, size; //Text Variables
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
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
 backgroundImageX = appWidth*0;
 backgroundImageY = appHeight*0;
 backgroundImageWidth = appWidth-1;
 backgroundImageHeight = appHeight-1;
 picBackground = loadImage("../imagesUsed/New folder/istockphoto-1372341709-1024x1024.jpg");
 xRectBackground = appWidth*0;
 yRectBackground = appHeight*0;
 widthRectBackground = appWidth-1;
 heightRectBackground = appHeight-1;
 xRectQuit = appWidth*1/4;
 yRectQuit = appHeight*1/4;
 widthRectQuit = appWidth*1/2;
 heightRectQuit = appHeight*1/2;
 xTitle = appWidth*1/4;
 yTitle = appHeight*1/10;
 widthTitle = appWidth*1/2;
 heightTitle= appHeight*2/10;
 xFooter = xTitle;
 yFooter = appHeight*7/10;
 widthFooter = widthTitle;
 heightFooter = heightTitle;
 //
 //DIVs
 rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight); //Copy and paste this for all rect()s
 // 
 //Text Setup
 // Fonts from OS (Operating System) 
 //String[] fontList = PFont.list(); //Lists all fonts available on OS
 //printArray(fontList);
 titleFont = createFont("Harrington", 100);
 footerFont = createFont("ArialMT", 100);
 //
} //End setup 
//
void draw() {
  //draw image 6o times per second
  background(255);
  //Drawing Text, copied for each line of text
  fill(pink); //ink
  textAlign(CENTER, CENTER); //A;ign X&Y, see Processing.org / reference
  size = 60; //integer number
  textFont(titleFont, size); // states which font to use
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
  fill(red);
  textAlign(CENTER, TOP);
  size = 120;
  textFont(footerFont, size);
  text( footer, xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk);
  //
 rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
 rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
 image(picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
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
