// parametric sliders based on example from controlP5 example files: "controlP5slider" and ControlP5toggle
// * Press the 'R' key to export a DXF file of shape.

//import peasy.*;
//import processing.opengl.*;
//import processing.dxf.*;
import controlP5.*;
ControlP5 cp5;
//PeasyCam cam;

//_________parametric variables__________//
int xdim = 20;
int ydim = 20;
int zdim = 50;
int zoom = 0;
float spinY = 90.0;
float spinX = 0.0;
//boolean shaded = false;

//____DXF_________________//
//boolean record = false;
void setup()
{
  size(800, 640, P3D);
  //P3D


    //_____________________camera setup_______________//

  //  cam = new PeasyCam(this, 100);
  //  cam.setMinimumDistance(50);
  //  cam.setMaximumDistance(500);

  //____________________generate sliders_____________________________//

  cp5 = new ControlP5(this);
  // the value of slider is linked
  // to variable "sliderValue" 
  cp5.addSlider("xdim")
  .setColorForeground(color(255, 0, 0))
  .setSize(250, 20)
    .setPosition(10, 50)
      .setRange(1, 255)
        ;
  cp5.addSlider("ydim")
  .setColorForeground(color(0, 255, 0))
  .setSize(250, 20)
    .setPosition(10, 70)
      .setRange(1, 255)
        ;
  cp5.addSlider("zdim")
  .setColorForeground(color(0, 0, 255))
  .setSize(250, 20)
    .setPosition(10, 90)
      .setRange(1, 255)
        ;
  cp5.addSlider("zoom")
  .setSize(250, 20)
    .setPosition(10, 110)
      .setRange(-500, 500)
        ;
  cp5.addSlider("spinY")
  .setSize(250, 20)
    .setPosition(10, 130)
      .setRange(0, 360)
        ;
  cp5.addSlider("spinX")
  .setSize(250, 20)
    .setPosition(10, 150)
      .setRange(0, 360)
        ;
  cp5.addToggle("shaded")
    .setPosition(10, 170)
      .setSize(50, 20)
        .setValue(true)
          .setMode(ControlP5.SWITCH)
            ;
}

void draw()
{

  background(0);

 

  lights();
  boxDraw();
  // if (record == true) {
  //   endRaw();
  //   record = false; // Stop recording to the file
  // }
}

void boxDraw() {
  // if (record == true) {
  //   beginRaw(DXF, "output.dxf"); // Start recording to the file
  // }
  pushMatrix();
  translate(width/2, height/2, zoom );
  rotateY(radians(spinY));
  //rotateY(radians(frameCount*speed));
  rotateX(radians(spinX));
  if (shaded == true) {
    stroke(179);
    fill(255, 242, 153);
  } 
  else {

    stroke(250);
    noFill();
  }
  box(xdim, ydim, zdim);
  popMatrix();
}


// void keyPressed() {
//   if (key == 'R' || key == 'r') { // Press R to save the file
//     record = true;
//   }
// }
