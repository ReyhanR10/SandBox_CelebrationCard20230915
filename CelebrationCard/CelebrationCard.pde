//Global Variables
int appWidth, appHeight;
float backgImageX, backgImageY, backgImageWidth, backgImageHeight;
float memberXrect, memberYrect, memberWidthRect, memberHeightRect, memberWidth, memberHeight;
float zeeXrect, zeeYrect, zeeWidthRect, zeeHeightRect, zeeWidth, zeeHeight;
PImage picBackg, memberForeground, zeePortrait;
Boolean nightmode
Boolean brightnessControl
String title="JKT48", footer="JAYA JAYA";//All text variables as name=value pairs
PFont titleFont, footerFont; //All fonts used
color red = #E32020, resetDefaultInk=#FFFFFF, blue = #1F47DE; //colour palette & inks
int sizeFont, size; //Text Variables
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
//
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  fullScreen () ;
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgImageX = appWidth*0;
  backgImageY = appHeight*0;
  backgImageWidth = appWidth-1;
  backgImageHeight = appHeight-1;
  memberXrect = appWidth*1/14;
  memberYrect = appHeight*1/8;
  memberWidthRect = appWidth*2.25/7;
  memberHeightRect = appHeight*1/4; // 2/8
  zeeXrect = bikeXrect;
  zeeYrect = appHeight*5/8;
  zeeWidthRect = bikeWidthRect;
  zeeHeightRect = bikeHeightRect;
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle = appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*7/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
  //Aspect Ratio Change
  memberWidth = 1280.0 
  memberHeigh = 2275.0
  zeeWidth = 780.0
  memberHeight = 1280.0
  float aspectRatio = 0.0;
  if ( memberWidth >= memberHeight ) { //MEMBER Image if Landscape
    //Comparison Verification
    println("MEMBER is Landscape");
    aspectRatio = memberHeight / memberHeight; // smaller/larger=0 int, use casting
    //memory of smaller side
    memberWidth = memberWidthRect;
    memberHeight = aspectRatio * memberWidth;
    if ( memberHeight > memberHeightRect ) { //ERROR Catch is memberHeight > memberHeightRect
    println("ERROR: Aspect Calculation Too Big!", "\tCalculated Image Height:", memberHeight, "\n\t\t\t\t\t\t & Actual rect() Height:", memberHeightRect);
    }
  } else { //MEMBER Image if Portrait
     //Comparison Verification
     println("MEMBER is Portrait");
     //Repeat Aspect Ratio
     //Comparison Verification
     aspectRatio = memberWidth / memberHeight; //smaller/larger=0 if int, use casting
     //memory of smaller side
     memberHeight = memberHeightRect;
     memberWidth = aspectRatio > memberWidthRect;
     if (memberWidth > memberWidthRect ) {  //ERROR Catch is bikeHeightRect > bikeHeight
      println("ERROR: Aspect Calcualtion Too Big");
    }
  } //End IF   
   //
  //DIVs
  rect( xRectBackground, yRectBackground, widthRectBackground, heightRectBackground );
  rect( xRectQuit, yRectQuit, widthRectQuit, heightRectQuit );
  //rect(); //Image, foreground, near the top
  //rect(); //Copy and Paste this for all rect()s
  //
  // Text Setup
  // Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //Lists all fonts available on OS
  printArray(fontList);
  titleFont = createFont("Agbalumo Regular", 55);
  footerFont = createFont("Kanit Italic", 55);
  //[fontName] = createFont("[fontSpelling]", [startingFontSize]);
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  //Drawing Text, copied for each line of text
  fill( red ); //ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 80; //integer number
  textFont(titleFont, size ); // states which font to use
  text (  title, xTitle, yTitle, widthTitle, heightTitle );
  fill(blue); //Ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  size = 140;
  textFont(footerFont, size);
  text( footer, xFooter, yFooter, widthFooter, heightFooter);
  //fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
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
